
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sock_timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {char* data; } ;
struct resp_pkt {int implementation; int request; TYPE_1__ u; int rm_vn_mode; int auth_seq; int mbz_itemsize; int err_nitems; } ;
typedef int ssize_t ;
typedef int rpkt ;
typedef int fd_set ;


 int ERR_INCOMPLETE ;
 int ERR_TIMEOUT ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int INFO_ERR (int ) ;
 scalar_t__ INFO_IS_AUTH (int ) ;
 size_t INFO_ITEMSIZE (int ) ;
 scalar_t__ INFO_MBZ (int ) ;
 int INFO_MODE (int ) ;
 size_t INFO_NITEMS (int ) ;
 int INFO_OKAY ;
 int INFO_SEQ (int ) ;
 int INFO_VERSION (int ) ;
 scalar_t__ ISMORE (int ) ;
 int ISRESPONSE (int ) ;
 int MAXSEQ ;
 int MODE_PRIVATE ;
 int NTP_OLDVERSION ;
 int NTP_VERSION ;
 int RESP_HEADER_SIZE ;
 int ZERO (char*) ;
 char* currenthost ;
 scalar_t__ debug ;
 int fprintf (int ,char*,char*) ;
 int growpktdata () ;
 int memcpy (char*,char*,unsigned int) ;
 char* pktdata ;
 int pktdatasize ;
 int printf (char*,...) ;
 int recv (scalar_t__,char*,int,int ) ;
 int select (scalar_t__,int *,int *,int *,struct sock_timeval*) ;
 scalar_t__ sockfd ;
 int stderr ;
 scalar_t__ time (int *) ;
 struct sock_timeval tvout ;
 struct sock_timeval tvsout ;
 int warning (char*) ;
 int zero_mem (char*,int) ;

__attribute__((used)) static int
getresponse(
 int implcode,
 int reqcode,
 size_t *ritems,
 size_t *rsize,
 const char **rdata,
 size_t esize
 )
{
 struct resp_pkt rpkt;
 struct sock_timeval tvo;
 size_t items;
 size_t i;
 size_t size;
 size_t datasize;
 char *datap;
 char *tmp_data;
 char haveseq[MAXSEQ+1];
 int firstpkt;
 int lastseq;
 int numrecv;
 int seq;
 fd_set fds;
 ssize_t n;
 int pad;

 uint32_t tobase;
 uint32_t tospan;
 uint32_t todiff;
 *ritems = 0;
 *rsize = 0;
 firstpkt = 1;
 numrecv = 0;
 *rdata = datap = pktdata;
 lastseq = 999;
 ZERO(haveseq);
 FD_ZERO(&fds);
 tobase = (uint32_t)time(((void*)0));

    again:
 if (firstpkt)
  tvo = tvout;
 else
  tvo = tvsout;
 tospan = (uint32_t)tvo.tv_sec + (tvo.tv_usec != 0);

 FD_SET(sockfd, &fds);
 n = select(sockfd+1, &fds, ((void*)0), ((void*)0), &tvo);
 if (n == -1) {
  warning("select fails");
  return -1;
 }





 todiff = (((uint32_t)time(((void*)0))) - tobase) & 0x7FFFFFFFu;
 if ((n > 0) && (todiff > tospan)) {
  n = recv(sockfd, (char *)&rpkt, sizeof(rpkt), 0);
  n -= n;
 }

 if (n == 0) {



  if (firstpkt) {
   (void) fprintf(stderr,
           "%s: timed out, nothing received\n",
           currenthost);
   return ERR_TIMEOUT;
  } else {
   (void) fprintf(stderr,
           "%s: timed out with incomplete data\n",
           currenthost);
   if (debug) {
    printf("Received sequence numbers");
    for (n = 0; n <= MAXSEQ; n++)
        if (haveseq[n])
     printf(" %zd,", (size_t)n);
    if (lastseq != 999)
        printf(" last frame received\n");
    else
        printf(" last frame not received\n");
   }
   return ERR_INCOMPLETE;
  }
 }

 n = recv(sockfd, (char *)&rpkt, sizeof(rpkt), 0);
 if (n == -1) {
  warning("read");
  return -1;
 }





 if (n < (ssize_t)RESP_HEADER_SIZE) {
  if (debug)
   printf("Short (%zd byte) packet received\n", (size_t)n);
  goto again;
 }
 if (INFO_VERSION(rpkt.rm_vn_mode) > NTP_VERSION ||
     INFO_VERSION(rpkt.rm_vn_mode) < NTP_OLDVERSION) {
  if (debug)
   printf("Packet received with version %d\n",
          INFO_VERSION(rpkt.rm_vn_mode));
  goto again;
 }
 if (INFO_MODE(rpkt.rm_vn_mode) != MODE_PRIVATE) {
  if (debug)
   printf("Packet received with mode %d\n",
          INFO_MODE(rpkt.rm_vn_mode));
  goto again;
 }
 if (INFO_IS_AUTH(rpkt.auth_seq)) {
  if (debug)
   printf("Encrypted packet received\n");
  goto again;
 }
 if (!ISRESPONSE(rpkt.rm_vn_mode)) {
  if (debug)
   printf("Received request packet, wanted response\n");
  goto again;
 }
 if (INFO_MBZ(rpkt.mbz_itemsize) != 0) {
  if (debug)
   printf("Received packet with nonzero MBZ field!\n");
  goto again;
 }




 if (rpkt.implementation != implcode || rpkt.request != reqcode) {
  if (debug)
   printf(
       "Received implementation/request of %d/%d, wanted %d/%d",
       rpkt.implementation, rpkt.request,
       implcode, reqcode);
  goto again;
 }




 if (INFO_ERR(rpkt.err_nitems) != INFO_OKAY) {
  if (debug && ISMORE(rpkt.rm_vn_mode)) {
   printf("Error code %d received on not-final packet\n",
          INFO_ERR(rpkt.err_nitems));
  }
  return (int)INFO_ERR(rpkt.err_nitems);
 }




 items = INFO_NITEMS(rpkt.err_nitems);
 size = INFO_ITEMSIZE(rpkt.mbz_itemsize);
 if (esize > size)
  pad = esize - size;
 else
  pad = 0;
 datasize = items * size;
 if ((size_t)datasize > (n-RESP_HEADER_SIZE)) {
  if (debug)
      printf(
       "Received items %zu, size %zu (total %zu), data in packet is %zu\n",
       items, size, datasize, n-RESP_HEADER_SIZE);
  goto again;
 }





 if (!firstpkt && size != *rsize) {
  if (debug)
      printf("Received itemsize %zu, previous %zu\n",
      size, *rsize);
  goto again;
 }



 seq = INFO_SEQ(rpkt.auth_seq);
 if (haveseq[seq]) {
  if (debug)
      printf("Received duplicate sequence number %d\n", seq);
  goto again;
 }
 haveseq[seq] = 1;




 if (!ISMORE(rpkt.rm_vn_mode)) {
  if (lastseq != 999) {
   printf("Received second end sequence packet\n");
   goto again;
  }
  lastseq = seq;
 }





 tobase = (uint32_t)time(((void*)0));
 if ((datap + datasize + (pad * items)) > (pktdata + pktdatasize)) {
  size_t offset = datap - pktdata;
  growpktdata();
  *rdata = pktdata;
  datap = pktdata + offset;
 }





 tmp_data = rpkt.u.data;
 for (i = 0; i < items; i++) {
  memcpy(datap, tmp_data, (unsigned)size);
  tmp_data += size;
  zero_mem(datap + size, pad);
  datap += size + pad;
 }

 if (firstpkt) {
  firstpkt = 0;
  *rsize = size + pad;
 }
 *ritems += items;





 ++numrecv;
 if (numrecv <= lastseq)
  goto again;
 return INFO_OKAY;
}

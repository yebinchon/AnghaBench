
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct pkt {int dummy; } ;
struct TYPE_3__ {void* data; } ;
struct TYPE_4__ {TYPE_1__ u; int err_nitems; int auth_seq; int rm_vn_mode; } ;


 int AUTH_SEQ (int ,scalar_t__) ;
 int DPRINTF (int,char*) ;
 scalar_t__ MAXSEQ ;
 int MORE_BIT ;
 int RESP_BIT ;
 scalar_t__ RESP_DATA_SIZE ;
 scalar_t__ RESP_HEADER_SIZE ;
 int RM_VN_MODE (int ,int ,int ) ;
 size_t databytes ;
 void* exbuf ;
 int frominter ;
 int htons (int ) ;
 scalar_t__ itemsize ;
 int memcpy (void*,void*,unsigned int) ;
 scalar_t__ nitems ;
 int numresppkts ;
 int reqver ;
 TYPE_2__ rpkt ;
 int sendpkt (int ,int ,int,struct pkt*,scalar_t__) ;
 scalar_t__ seqno ;
 int toaddr ;
 int usingexbuf ;

__attribute__((used)) static void *
more_pkt(void)
{



 if (usingexbuf) {
  DPRINTF(3, ("request: sending pkt\n"));
  rpkt.rm_vn_mode = RM_VN_MODE(RESP_BIT, MORE_BIT, reqver);
  rpkt.auth_seq = AUTH_SEQ(0, seqno);
  rpkt.err_nitems = htons((u_short)nitems);
  sendpkt(toaddr, frominter, -1, (struct pkt *)&rpkt,
   RESP_HEADER_SIZE + databytes);
  numresppkts++;




  memcpy(&rpkt.u.data[0], exbuf, (unsigned)itemsize);
  seqno++;
  databytes = 0;
  nitems = 0;
  usingexbuf = 0;
 }

 databytes += itemsize;
 nitems++;
 if (databytes + itemsize <= RESP_DATA_SIZE) {
  DPRINTF(4, ("request: giving him more data\n"));




  return &rpkt.u.data[databytes];
 } else {




  DPRINTF(4, ("request: into extra buffer\n"));
  if (seqno == MAXSEQ)
   return ((void*)0);
  else {
   usingexbuf = 1;
   return exbuf;
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct pcap_usb_linux {int packets_read; int * mmapbuf; } ;
struct TYPE_6__ {int tv_usec; int tv_sec; } ;
struct pcap_pkthdr {scalar_t__ len; scalar_t__ caplen; TYPE_1__ ts; } ;
struct mon_bin_mfetch {size_t* offvec; int nfetch; int nflush; } ;
typedef int pcap_usb_header_mmapped ;
struct TYPE_8__ {char event_type; scalar_t__ data_len; int ts_usec; int ts_sec; } ;
typedef TYPE_3__ pcap_usb_header ;
struct TYPE_7__ {int * bf_insns; } ;
struct TYPE_9__ {scalar_t__ snapshot; int fd; int errbuf; TYPE_2__ fcode; scalar_t__ break_loop; struct pcap_usb_linux* priv; } ;
typedef TYPE_4__ pcap_t ;
typedef int (* pcap_handler ) (int *,struct pcap_pkthdr*,int *) ;
typedef size_t int32_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int MON_IOCH_MFLUSH ;
 int MON_IOCX_MFETCH ;
 scalar_t__ PACKET_COUNT_IS_UNLIMITED (int) ;
 int PCAP_ERRBUF_SIZE ;
 int VEC_SIZE ;
 scalar_t__ bpf_filter (int *,int *,scalar_t__,scalar_t__) ;
 scalar_t__ errno ;
 int ioctl (int ,int ,...) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*,int ) ;

__attribute__((used)) static int
usb_read_linux_mmap(pcap_t *handle, int max_packets, pcap_handler callback, u_char *user)
{
 struct pcap_usb_linux *handlep = handle->priv;
 struct mon_bin_mfetch fetch;
 int32_t vec[VEC_SIZE];
 struct pcap_pkthdr pkth;
 pcap_usb_header* hdr;
 int nflush = 0;
 int packets = 0;
 u_int clen, max_clen;

 max_clen = handle->snapshot - sizeof(pcap_usb_header);

 for (;;) {
  int i, ret;
  int limit = max_packets - packets;
  if (limit <= 0)
   limit = VEC_SIZE;
  if (limit > VEC_SIZE)
   limit = VEC_SIZE;


  fetch.offvec = vec;
  fetch.nfetch = limit;
  fetch.nflush = nflush;

  do {
   ret = ioctl(handle->fd, MON_IOCX_MFETCH, &fetch);
   if (handle->break_loop)
   {
    handle->break_loop = 0;
    return -2;
   }
  } while ((ret == -1) && (errno == EINTR));
  if (ret < 0)
  {
   if (errno == EAGAIN)
    return 0;

   pcap_fmt_errmsg_for_errno(handle->errbuf,
       PCAP_ERRBUF_SIZE, errno, "Can't mfetch fd %d",
       handle->fd);
   return -1;
  }


  nflush = fetch.nfetch;
  for (i=0; i<fetch.nfetch; ++i) {

   hdr = (pcap_usb_header*) &handlep->mmapbuf[vec[i]];
   if (hdr->event_type == '@')
    continue;



   clen = max_clen;
   if (hdr->data_len < clen)
    clen = hdr->data_len;


   pkth.caplen = clen + sizeof(pcap_usb_header_mmapped);
   pkth.len = hdr->data_len + sizeof(pcap_usb_header_mmapped);
   pkth.ts.tv_sec = hdr->ts_sec;
   pkth.ts.tv_usec = hdr->ts_usec;

   if (handle->fcode.bf_insns == ((void*)0) ||
       bpf_filter(handle->fcode.bf_insns, (u_char*) hdr,
         pkth.len, pkth.caplen)) {
    handlep->packets_read++;
    callback(user, &pkth, (u_char*) hdr);
    packets++;
   }
  }


  if (PACKET_COUNT_IS_UNLIMITED(max_packets) || (packets == max_packets))
   break;
 }


 if (ioctl(handle->fd, MON_IOCH_MFLUSH, nflush) == -1) {
  pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
      errno, "Can't mflush fd %d", handle->fd);
  return -1;
 }
 return packets;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct pcap_dlpi {int dlpi_hd; } ;
struct TYPE_4__ {int cc; size_t bufsize; int offset; int errbuf; scalar_t__ buffer; scalar_t__ break_loop; int * bp; struct pcap_dlpi* priv; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_handler ;


 int DLPI_SUCCESS ;
 int DL_SYSERR ;
 scalar_t__ EINTR ;
 int dlpi_linkname (int ) ;
 int dlpi_recv (int ,int *,int *,int *,size_t*,int,int *) ;
 scalar_t__ errno ;
 int pcap_libdlpi_err (int ,char*,int,int ) ;
 int pcap_process_pkts (TYPE_1__*,int ,int *,int,int *,int) ;

__attribute__((used)) static int
pcap_read_libdlpi(pcap_t *p, int count, pcap_handler callback, u_char *user)
{
 struct pcap_dlpi *pd = p->priv;
 int len;
 u_char *bufp;
 size_t msglen;
 int retv;

 len = p->cc;
 if (len != 0) {
  bufp = p->bp;
  goto process_pkts;
 }
 do {

  if (p->break_loop) {





   p->break_loop = 0;
   return (-2);
  }

  msglen = p->bufsize;
  bufp = (u_char *)p->buffer + p->offset;

  retv = dlpi_recv(pd->dlpi_hd, ((void*)0), ((void*)0), bufp,
      &msglen, -1, ((void*)0));
  if (retv != DLPI_SUCCESS) {





   if (retv == DL_SYSERR && errno == EINTR) {
    len = 0;
    continue;
   }
   pcap_libdlpi_err(dlpi_linkname(pd->dlpi_hd),
       "dlpi_recv", retv, p->errbuf);
   return (-1);
  }
  len = msglen;
 } while (len == 0);

process_pkts:
 return (pcap_process_pkts(p, callback, user, count, bufp, len));
}

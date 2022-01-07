
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct strbuf {int member_0; char* member_2; char* buf; int maxlen; int len; int member_1; } ;
struct TYPE_4__ {int cc; int offset; int bufsize; int * bp; scalar_t__ buffer; int errbuf; int fd; scalar_t__ break_loop; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_handler ;
typedef int bpf_u_int32 ;




 int MAXDLBUF ;
 int errno ;
 scalar_t__ getmsg (int ,struct strbuf*,struct strbuf*,int*) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int,char*) ;
 int pcap_process_pkts (TYPE_1__*,int ,int *,int,int *,int) ;

__attribute__((used)) static int
pcap_read_dlpi(pcap_t *p, int cnt, pcap_handler callback, u_char *user)
{
 int cc;
 u_char *bp;
 int flags;
 bpf_u_int32 ctlbuf[MAXDLBUF];
 struct strbuf ctl = {
  MAXDLBUF,
  0,
  (char *)ctlbuf
 };
 struct strbuf data;

 flags = 0;
 cc = p->cc;
 if (cc == 0) {
  data.buf = (char *)p->buffer + p->offset;
  data.maxlen = p->bufsize;
  data.len = 0;
  do {



   if (p->break_loop) {






    p->break_loop = 0;
    return (-2);
   }





   ctl.buf = (char *)ctlbuf;
   ctl.maxlen = MAXDLBUF;
   ctl.len = 0;
   if (getmsg(p->fd, &ctl, &data, &flags) < 0) {

    switch (errno) {

    case 128:
     cc = 0;
     continue;

    case 129:
     return (0);
    }
    pcap_fmt_errmsg_for_errno(p->errbuf,
        sizeof(p->errbuf), errno, "getmsg");
    return (-1);
   }
   cc = data.len;
  } while (cc == 0);
  bp = (u_char *)p->buffer + p->offset;
 } else
  bp = p->bp;

 return (pcap_process_pkts(p, callback, user, cnt, bp, cc));
}

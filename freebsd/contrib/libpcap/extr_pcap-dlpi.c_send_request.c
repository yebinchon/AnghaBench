
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; scalar_t__ maxlen; } ;


 int PCAP_ERRBUF_SIZE ;
 int errno ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*,char*) ;
 scalar_t__ putmsg (int,struct strbuf*,struct strbuf*,int) ;

__attribute__((used)) static int
send_request(int fd, char *ptr, int len, char *what, char *ebuf)
{
 struct strbuf ctl;
 int flags;

 ctl.maxlen = 0;
 ctl.len = len;
 ctl.buf = ptr;

 flags = 0;
 if (putmsg(fd, &ctl, (struct strbuf *) ((void*)0), flags) < 0) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "send_request: putmsg \"%s\"", what);
  return (-1);
 }
 return (0);
}

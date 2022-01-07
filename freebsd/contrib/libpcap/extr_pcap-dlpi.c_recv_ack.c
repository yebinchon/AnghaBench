
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dl_unix_errno; int dl_errno; } ;
union DL_primitives {int dl_primitive; TYPE_1__ error_ack; } ;
struct strbuf {int len; char* buf; int maxlen; } ;
typedef int errmsgbuf ;
typedef int dlprimbuf ;


 int DL_ACCESS ;
 int DL_BADPPA ;






 int EACCES ;
 int EPERM ;
 union DL_primitives* MAKE_DL_PRIMITIVES (char*) ;
 int MAXDLBUF ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_PERM_DENIED ;
 int dlprim (char*,int,int) ;
 int dlstrerror (char*,int,int ) ;
 int errno ;
 scalar_t__ getmsg (int,struct strbuf*,struct strbuf*,int*) ;
 int pcap_fmt_errmsg_for_errno (char*,int,int,char*,char const*) ;
 int pcap_snprintf (char*,int,char*,char const*,int,...) ;

__attribute__((used)) static int
recv_ack(int fd, int size, const char *what, char *bufp, char *ebuf, int *uerror)
{
 union DL_primitives *dlp;
 struct strbuf ctl;
 int flags;
 char errmsgbuf[PCAP_ERRBUF_SIZE];
 char dlprimbuf[64];





 if (uerror != ((void*)0))
  *uerror = 0;

 ctl.maxlen = MAXDLBUF;
 ctl.len = 0;
 ctl.buf = bufp;

 flags = 0;
 if (getmsg(fd, &ctl, (struct strbuf*)((void*)0), &flags) < 0) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "recv_ack: %s getmsg", what);
  return (PCAP_ERROR);
 }

 dlp = MAKE_DL_PRIMITIVES(ctl.buf);
 switch (dlp->dl_primitive) {

 case 130:
 case 133:
 case 129:

 case 131:


  break;

 case 132:
  switch (dlp->error_ack.dl_errno) {

  case 128:
   if (uerror != ((void*)0))
    *uerror = dlp->error_ack.dl_unix_errno;
   pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
       dlp->error_ack.dl_unix_errno,
       "recv_ack: %s: UNIX error", what);
   if (dlp->error_ack.dl_unix_errno == EPERM ||
       dlp->error_ack.dl_unix_errno == EACCES)
    return (PCAP_ERROR_PERM_DENIED);
   break;

  default:
   pcap_snprintf(ebuf, PCAP_ERRBUF_SIZE,
       "recv_ack: %s: %s", what,
       dlstrerror(errmsgbuf, sizeof (errmsgbuf), dlp->error_ack.dl_errno));
   if (dlp->error_ack.dl_errno == DL_BADPPA)
    return (PCAP_ERROR_NO_SUCH_DEVICE);
   else if (dlp->error_ack.dl_errno == DL_ACCESS)
    return (PCAP_ERROR_PERM_DENIED);
   break;
  }
  return (PCAP_ERROR);

 default:
  pcap_snprintf(ebuf, PCAP_ERRBUF_SIZE,
      "recv_ack: %s: Unexpected primitive ack %s",
      what, dlprim(dlprimbuf, sizeof (dlprimbuf), dlp->dl_primitive));
  return (PCAP_ERROR);
 }

 if (ctl.len < size) {
  pcap_snprintf(ebuf, PCAP_ERRBUF_SIZE,
      "recv_ack: %s: Ack too small (%d < %d)",
      what, ctl.len, size);
  return (PCAP_ERROR);
 }
 return (ctl.len);
}

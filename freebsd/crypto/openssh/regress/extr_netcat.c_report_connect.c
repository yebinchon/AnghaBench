
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int remote_port ;
typedef int remote_host ;


 int EAI_SYSTEM ;
 int NI_MAXHOST ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int err (int,char*) ;
 int errx (int,char*,int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int gai_strerror (int) ;
 int getnameinfo (struct sockaddr const*,int ,char*,int,char*,int,int) ;
 scalar_t__ nflag ;
 int stderr ;

void
report_connect(const struct sockaddr *sa, socklen_t salen)
{
 char remote_host[NI_MAXHOST];
 char remote_port[NI_MAXSERV];
 int herr;
 int flags = NI_NUMERICSERV;

 if (nflag)
  flags |= NI_NUMERICHOST;

 if ((herr = getnameinfo(sa, salen,
     remote_host, sizeof(remote_host),
     remote_port, sizeof(remote_port),
     flags)) != 0) {
  if (herr == EAI_SYSTEM)
   err(1, "getnameinfo");
  else
   errx(1, "getnameinfo: %s", gai_strerror(herr));
 }

 fprintf(stderr,
     "Connection from %s %s "
     "received!\n", remote_host, remote_port);
}

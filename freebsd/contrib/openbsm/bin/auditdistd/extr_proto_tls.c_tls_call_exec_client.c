
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int dummy; } ;


 int EX_OSERR ;
 int EX_SOFTWARE ;
 int EX_TEMPFAIL ;
 int F_SETFD ;
 scalar_t__ PJDLOG_MODE_STD ;
 int TLS_DEFAULT_TIMEOUT ;
 int asprintf (char**,char*,int) ;
 int closefrom (int) ;
 int dup2 (int,int) ;
 int execl (int ,int ,char*,char*,int ,char*,char*,char*,char const*,int ,int ,char*,char*,int *) ;
 int fcntl (int,int ,int ) ;
 int pjdlog_debug_get () ;
 int pjdlog_exit (int ,char*) ;
 scalar_t__ pjdlog_mode_get () ;
 int proto_close (struct proto_conn*) ;
 int proto_descriptor (struct proto_conn*) ;
 int proto_get (char*) ;
 int proto_recv (struct proto_conn*,int *,int ) ;

__attribute__((used)) static void
tls_call_exec_client(struct proto_conn *sock, const char *srcaddr,
    const char *dstaddr, int timeout)
{
 char *timeoutstr, *startfdstr, *debugstr;
 int startfd;


 proto_recv(sock, ((void*)0), 0);

 if (pjdlog_mode_get() == PJDLOG_MODE_STD)
  startfd = 3;
 else
  startfd = 0;

 if (proto_descriptor(sock) != startfd) {

  if (dup2(proto_descriptor(sock), startfd) == -1)
   pjdlog_exit(EX_OSERR, "dup2() failed");
  proto_close(sock);
 } else {




  if (fcntl(startfd, F_SETFD, 0) == -1)
   pjdlog_exit(EX_OSERR, "fcntl() failed");
 }

 closefrom(startfd + 1);

 if (asprintf(&startfdstr, "%d", startfd) == -1)
  pjdlog_exit(EX_TEMPFAIL, "asprintf() failed");
 if (timeout == -1)
  timeout = TLS_DEFAULT_TIMEOUT;
 if (asprintf(&timeoutstr, "%d", timeout) == -1)
  pjdlog_exit(EX_TEMPFAIL, "asprintf() failed");
 if (asprintf(&debugstr, "%d", pjdlog_debug_get()) == -1)
  pjdlog_exit(EX_TEMPFAIL, "asprintf() failed");

 execl(proto_get("execpath"), proto_get("execpath"), "proto", "tls",
     proto_get("user"), "client", startfdstr,
     srcaddr == ((void*)0) ? "" : srcaddr, dstaddr,
     proto_get("tls:fingerprint"), proto_get("tcp:port"), timeoutstr,
     debugstr, ((void*)0));
 pjdlog_exit(EX_SOFTWARE, "execl() failed");
}

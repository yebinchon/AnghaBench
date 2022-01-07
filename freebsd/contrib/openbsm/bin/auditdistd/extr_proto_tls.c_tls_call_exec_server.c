
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proto_conn {int dummy; } ;


 int EX_OSERR ;
 int EX_SOFTWARE ;
 int EX_TEMPFAIL ;
 int F_SETFD ;
 int MAX (int,int) ;
 scalar_t__ PJDLOG_MODE_STD ;
 int asprintf (char**,char*,int) ;
 int close (int) ;
 int closefrom (int) ;
 int dup2 (int,int) ;
 int execl (int ,int ,char*,char*,int ,char*,char*,int ,int ,char*,int *) ;
 int fcntl (int,int ,int ) ;
 int pjdlog_debug_get () ;
 int pjdlog_exit (int ,char*) ;
 scalar_t__ pjdlog_mode_get () ;
 int proto_close (struct proto_conn*) ;
 int proto_descriptor (struct proto_conn*) ;
 int proto_get (char*) ;
 int proto_send (struct proto_conn*,int *,int ) ;

__attribute__((used)) static void
tls_call_exec_server(struct proto_conn *sock, struct proto_conn *tcp)
{
 int startfd, sockfd, tcpfd, safefd;
 char *startfdstr, *debugstr;

 if (pjdlog_mode_get() == PJDLOG_MODE_STD)
  startfd = 3;
 else
  startfd = 0;


 proto_send(sock, ((void*)0), 0);

 sockfd = proto_descriptor(sock);
 tcpfd = proto_descriptor(tcp);

 safefd = MAX(sockfd, tcpfd);
 safefd = MAX(safefd, startfd);
 safefd++;


 if (dup2(sockfd, safefd) == -1)
  pjdlog_exit(EX_OSERR, "dup2() failed");
 proto_close(sock);
 sockfd = safefd;
 if (dup2(tcpfd, safefd + 1) == -1)
  pjdlog_exit(EX_OSERR, "dup2() failed");
 proto_close(tcp);
 tcpfd = safefd + 1;


 if (dup2(sockfd, startfd) == -1)
  pjdlog_exit(EX_OSERR, "dup2() failed");
 (void)close(sockfd);

 if (dup2(tcpfd, startfd + 1) == -1)
  pjdlog_exit(EX_OSERR, "dup2() failed");
 (void)close(tcpfd);

 closefrom(startfd + 2);





 if (fcntl(startfd, F_SETFD, 0) == -1)
  pjdlog_exit(EX_OSERR, "fcntl() failed");
 if (fcntl(startfd + 1, F_SETFD, 0) == -1)
  pjdlog_exit(EX_OSERR, "fcntl() failed");

 if (asprintf(&startfdstr, "%d", startfd) == -1)
  pjdlog_exit(EX_TEMPFAIL, "asprintf() failed");
 if (asprintf(&debugstr, "%d", pjdlog_debug_get()) == -1)
  pjdlog_exit(EX_TEMPFAIL, "asprintf() failed");

 execl(proto_get("execpath"), proto_get("execpath"), "proto", "tls",
     proto_get("user"), "server", startfdstr, proto_get("tls:keyfile"),
     proto_get("tls:certfile"), debugstr, ((void*)0));
 pjdlog_exit(EX_SOFTWARE, "execl() failed");
}

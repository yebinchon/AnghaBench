
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sockaddr ;


 int FASYNC ;
 int F_SETFL ;
 int INADDR_ANY ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_REUSEADDR ;
 int TCP_NODELAY ;
 int accept (int,struct sockaddr*,int*) ;
 int atoi (char*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int htons (int) ;
 scalar_t__ listen (int,int) ;
 int perror_with_name (char*) ;
 int remote_desc ;
 int setsockopt (int,int ,int ,char*,int) ;
 int signal (int ,int ) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
remote_open (char *name)
{
  if (!strchr (name, ':'))
    {
      fprintf (stderr, "%s: Must specify tcp connection as host:addr\n", name);
      fflush (stderr);
      exit (1);
    }
  else
    {
      char *port_str;
      int port;
      struct sockaddr_in sockaddr;
      int tmp;
      int tmp_desc;

      port_str = strchr (name, ':');

      port = atoi (port_str + 1);

      tmp_desc = socket (PF_INET, SOCK_STREAM, 0);
      if (tmp_desc < 0)
 perror_with_name ("Can't open socket");


      tmp = 1;
      setsockopt (tmp_desc, SOL_SOCKET, SO_REUSEADDR, (char *) &tmp,
    sizeof (tmp));

      sockaddr.sin_family = PF_INET;
      sockaddr.sin_port = htons (port);
      sockaddr.sin_addr.s_addr = INADDR_ANY;

      if (bind (tmp_desc, (struct sockaddr *) &sockaddr, sizeof (sockaddr))
   || listen (tmp_desc, 1))
 perror_with_name ("Can't bind address");

      tmp = sizeof (sockaddr);
      remote_desc = accept (tmp_desc, (struct sockaddr *) &sockaddr, &tmp);
      if (remote_desc == -1)
 perror_with_name ("Accept failed");


      tmp = 1;
      setsockopt (tmp_desc, SOL_SOCKET, SO_KEEPALIVE, (char *) &tmp, sizeof (tmp));



      tmp = 1;
      setsockopt (remote_desc, IPPROTO_TCP, TCP_NODELAY,
    (char *) &tmp, sizeof (tmp));

      close (tmp_desc);

      signal (SIGPIPE, SIG_IGN);

    }

  fcntl (remote_desc, F_SETFL, FASYNC);

  fprintf (stderr, "Replay logfile using %s\n", name);
  fflush (stderr);
}

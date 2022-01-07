
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct termios {int c_cflag; int* c_cc; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct termio {int c_cflag; int* c_cc; int sg_flags; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sgttyb {int c_cflag; int* c_cc; int sg_flags; scalar_t__ c_lflag; scalar_t__ c_oflag; scalar_t__ c_iflag; } ;
typedef int sockaddr ;


 int CLOCAL ;
 int CS8 ;
 int CSIZE ;
 int FASYNC ;
 int F_GETFL ;
 int F_SETFL ;
 int F_SETOWN ;
 int INADDR_ANY ;
 int IPPROTO_TCP ;
 int O_RDWR ;
 int PARENB ;
 int PF_INET ;
 int RAW ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int SO_REUSEADDR ;
 int TCGETA ;
 int TCP_NODELAY ;
 int TCSANOW ;
 int TCSETA ;
 int TIOCGETP ;
 int TIOCSETP ;
 size_t VMIN ;
 size_t VTIME ;
 int accept (int,struct sockaddr*,int*) ;
 int atoi (char*) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int disable_async_io () ;
 int fcntl (int,int ,int) ;
 int fprintf (int ,char*,...) ;
 int getpid () ;
 int htons (int) ;
 char* inet_ntoa (TYPE_1__) ;
 int ioctl (int,int ,struct termio*) ;
 scalar_t__ listen (int,int) ;
 int open (char*,int ) ;
 int perror_with_name (char*) ;
 int remote_desc ;
 int setsockopt (int,int ,int ,char*,int) ;
 int signal (int ,int ) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 char* strchr (char*,char) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;

void
remote_open (char *name)
{
  int save_fcntl_flags;

  if (!strchr (name, ':'))
    {
      remote_desc = open (name, O_RDWR);
      if (remote_desc < 0)
 perror_with_name ("Could not open remote device");
      fprintf (stderr, "Remote debugging using %s\n", name);
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

      fprintf (stderr, "Listening on port %d\n", port);

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



      fprintf (stderr, "Remote debugging from host %s\n",
         inet_ntoa (sockaddr.sin_addr));
    }
  disable_async_io ();
}

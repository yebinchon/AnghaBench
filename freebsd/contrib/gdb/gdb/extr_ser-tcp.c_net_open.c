
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct serial {scalar_t__ fd; } ;
struct in_addr {int dummy; } ;
struct hostent {int h_addr; } ;
typedef int sockaddr ;
typedef int fd_set ;
typedef int err ;


 int EINPROGRESS ;
 int EINTR ;
 int ENOENT ;
 int ETIMEDOUT ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int FIONBIO ;
 int IPPROTO_TCP ;
 int PF_INET ;
 int POLL_INTERVAL ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int TCP_NODELAY ;
 int TIMEOUT ;
 int atoi (char*) ;
 int connect (scalar_t__,struct sockaddr*,int) ;
 int errno ;
 int error (char*) ;
 int fprintf_unfiltered (int ,char*,char*) ;
 int gdb_stderr ;
 struct hostent* gethostbyname (char*) ;
 int getsockopt (scalar_t__,int ,int ,int*,int*) ;
 int htons (int) ;
 int ioctl (scalar_t__,int ,int*) ;
 int memcpy (int *,int ,int) ;
 int min (int,int) ;
 int net_close (struct serial*) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int setsockopt (scalar_t__,int ,int ,char*,int) ;
 int signal (int ,int ) ;
 void* socket (int ,int ,int ) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 scalar_t__ ui_loop_hook (int ) ;

__attribute__((used)) static int
net_open (struct serial *scb, const char *name)
{
  char *port_str, hostname[100];
  int n, port, tmp;
  int use_udp;
  struct hostent *hostent;
  struct sockaddr_in sockaddr;

  use_udp = 0;
  if (strncmp (name, "udp:", 4) == 0)
    {
      use_udp = 1;
      name = name + 4;
    }
  else if (strncmp (name, "tcp:", 4) == 0)
    name = name + 4;

  port_str = strchr (name, ':');

  if (!port_str)
    error ("net_open: No colon in host name!");

  tmp = min (port_str - name, (int) sizeof hostname - 1);
  strncpy (hostname, name, tmp);
  hostname[tmp] = '\000';
  port = atoi (port_str + 1);


  if (!hostname[0])
    strcpy (hostname, "localhost");

  hostent = gethostbyname (hostname);
  if (!hostent)
    {
      fprintf_unfiltered (gdb_stderr, "%s: unknown host\n", hostname);
      errno = ENOENT;
      return -1;
    }

  if (use_udp)
    scb->fd = socket (PF_INET, SOCK_DGRAM, 0);
  else
    scb->fd = socket (PF_INET, SOCK_STREAM, 0);

  if (scb->fd < 0)
    return -1;

  sockaddr.sin_family = PF_INET;
  sockaddr.sin_port = htons (port);
  memcpy (&sockaddr.sin_addr.s_addr, hostent->h_addr,
   sizeof (struct in_addr));


  tmp = 1;
  ioctl (scb->fd, FIONBIO, &tmp);


  n = connect (scb->fd, (struct sockaddr *) &sockaddr, sizeof (sockaddr));

  if (n < 0 && errno != EINPROGRESS)
    {
      net_close (scb);
      return -1;
    }

  if (n)
    {

      struct timeval t;
      fd_set rset, wset;
      int polls = 0;
      FD_ZERO (&rset);

      do
 {



   if (ui_loop_hook)
     {
       if (ui_loop_hook (0))
  {
    errno = EINTR;
    net_close (scb);
    return -1;
  }
     }

   FD_SET (scb->fd, &rset);
   wset = rset;
   t.tv_sec = 0;
   t.tv_usec = 1000000 / POLL_INTERVAL;

   n = select (scb->fd + 1, &rset, &wset, ((void*)0), &t);
   polls++;
 }
      while (n == 0 && polls <= TIMEOUT * POLL_INTERVAL);
      if (n < 0 || polls > TIMEOUT * POLL_INTERVAL)
 {
   if (polls > TIMEOUT * POLL_INTERVAL)
     errno = ETIMEDOUT;
   net_close (scb);
   return -1;
 }
    }


  {
    int res, err, len;
    len = sizeof(err);
    res = getsockopt (scb->fd, SOL_SOCKET, SO_ERROR, &err, &len);
    if (res < 0 || err)
      {
 if (err)
   errno = err;
 net_close (scb);
 return -1;
      }
  }


  tmp = 0;
  ioctl (scb->fd, FIONBIO, &tmp);

  if (use_udp == 0)
    {

      tmp = 1;
      setsockopt (scb->fd, IPPROTO_TCP, TCP_NODELAY,
    (char *)&tmp, sizeof (tmp));
    }



  signal (SIGPIPE, SIG_IGN);

  return 0;
}

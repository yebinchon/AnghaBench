
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
struct sockaddr_in {int sin_len; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int pid_t ;
typedef int buf ;
typedef int HOSTNAMEBASE ;


 int AF_INET ;
 int O_RDWR ;
 int PF_INET ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int __arraycount (int ) ;
 int atomic_inc_uint (int *) ;
 int bindcalls ;
 scalar_t__ doquit ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int hostnamebuf ;
 int hostnamemib ;
 int htons (int) ;
 int iskiller ;
 int memset (struct sockaddr_in*,int ,int) ;
 int mypid ;
 int ntohs (int ) ;
 int rump_sys___sysctl (int ,int ,char*,size_t*,int *,int ) ;
 int rump_sys_bind (int,struct sockaddr*,int) ;
 int rump_sys_close (int) ;
 int rump_sys_getpid () ;
 int rump_sys_open (char*,int ) ;
 int rump_sys_setsockopt (int,int ,int ,int*,int) ;
 int rump_sys_socket (int ,int ,int ) ;
 int rump_sys_write (int,char*,int) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int syscalls ;

__attribute__((used)) static void *
client(void *arg)
{
 char buf[256];
 struct sockaddr_in sin;
 size_t blen;
 int port = (int)(uintptr_t)arg;
 int s, fd, x;

 memset(&sin, 0, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_port = htons(port);

 while (!doquit) {
  pid_t pidi;
  blen = sizeof(buf);
  s = rump_sys_socket(PF_INET, SOCK_STREAM, 0);
  if (s == -1)
   err(1, "socket");
  atomic_inc_uint(&syscalls);

  fd = rump_sys_open("/dev/null", O_RDWR);
  atomic_inc_uint(&syscalls);

  if (doquit)
   goto out;

  x = 1;
  if (rump_sys_setsockopt(s, SOL_SOCKET, SO_REUSEADDR,
      &x, sizeof(x)) == -1)
   err(1, "reuseaddr");





  if (rump_sys_bind(s, (struct sockaddr*)&sin, sizeof(sin))==-1) {
   if (!iskiller)
    err(1, "bind to port %d failed",
        ntohs(sin.sin_port));
  } else {
   atomic_inc_uint(&bindcalls);
  }
  atomic_inc_uint(&syscalls);

  if (doquit)
   goto out;

  if (rump_sys___sysctl(hostnamemib, __arraycount(hostnamemib),
      buf, &blen, ((void*)0), 0) == -1)
   err(1, "sysctl");
  if (strncmp(buf, hostnamebuf, sizeof(HOSTNAMEBASE)-1) != 0)
   errx(1, "hostname (%s/%s) mismatch", buf, hostnamebuf);
  atomic_inc_uint(&syscalls);

  if (doquit)
   goto out;

  pidi = rump_sys_getpid();
  if (pidi == -1)
   err(1, "getpid");
  if (pidi != mypid)
   errx(1, "mypid mismatch");
  atomic_inc_uint(&syscalls);

  if (doquit)
   goto out;

  if (rump_sys_write(fd, buf, 16) != 16)
   err(1, "write /dev/null");
  atomic_inc_uint(&syscalls);

 out:
  rump_sys_close(fd);
  atomic_inc_uint(&syscalls);
  rump_sys_close(s);
  atomic_inc_uint(&syscalls);
 }

 return ((void*)0);
}

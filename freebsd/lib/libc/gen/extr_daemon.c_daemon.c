
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_EXEC ;
 int O_RDWR ;
 int _PATH_DEVNULL ;
 int _close (int) ;
 int _open (char*,int ,...) ;
 int daemonfd (int,int) ;

int
daemon(int nochdir, int noclose)
{
 int chdirfd, nullfd, ret;

 if (!noclose)
  nullfd = _open(_PATH_DEVNULL, O_RDWR, 0);
 else
  nullfd = -1;

 if (!nochdir)
  chdirfd = _open("/", O_EXEC);
 else
  chdirfd = -1;

 ret = daemonfd(chdirfd, nullfd);

 if (chdirfd != -1)
  _close(chdirfd);

 if (nullfd > 2)
  _close(nullfd);

 return (ret);
}

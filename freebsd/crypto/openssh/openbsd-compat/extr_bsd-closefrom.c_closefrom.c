
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int fdpath ;
typedef int DIR ;


 long INT_MAX ;
 long OPEN_MAX ;
 int PATH_MAX ;
 int _SC_OPEN_MAX ;
 int close (int) ;
 int closedir (int *) ;
 long dirfd (int *) ;
 long getdtablesize () ;
 scalar_t__ getpid () ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,long) ;
 long strtol (char*,char**,int) ;
 long sysconf (int ) ;

void
closefrom(int lowfd)
{
    long fd, maxfd;
    {
 maxfd = getdtablesize();

 if (maxfd < 0)
     maxfd = OPEN_MAX;

 for (fd = lowfd; fd < maxfd; fd++)
     (void) close((int) fd);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmp {int dummy; } ;


 int O_APPEND ;
 int O_WRONLY ;
 int SEEK_SET ;
 int _PATH_UTMP ;
 int _PATH_WTMP ;
 int close (int) ;
 int endutent () ;
 int lseek (int,long,int ) ;
 int open (int ,int,int ) ;
 int prepare_utmp (struct utmp*,char*,char const*,char const*) ;
 int pututline (struct utmp*) ;
 int setutent () ;
 int ttyslot () ;
 int utmpname (int ) ;
 int write (int,struct utmp*,int) ;

void utmp_login(char *tty, const char *username, const char *hostname)
{
    struct utmp utmp;
    int fd;

    prepare_utmp (&utmp, tty, username, hostname);
    if ((fd = open(_PATH_WTMP, O_WRONLY|O_APPEND, 0)) >= 0) {
 write(fd, &utmp, sizeof(struct utmp));
 close(fd);
    }
}

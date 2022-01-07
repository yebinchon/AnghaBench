
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int dummy; } ;
struct termios {int dummy; } ;


 int O_NOCTTY ;
 int O_RDWR ;
 int TCSAFLUSH ;
 int TIOCSWINSZ ;
 int close (int) ;
 int grantpt (int) ;
 int ioctl (int,int ,char*) ;
 int open (char const*,int) ;
 int posix_openpt (int) ;
 char* ptsname (int) ;
 int strcpy (char*,char const*) ;
 int tcsetattr (int,int ,struct termios*) ;
 int unlockpt (int) ;

int
openpty(int *amaster, int *aslave, char *name, struct termios *termp,
    struct winsize *winp)
{
 const char *slavename;
 int master, slave;

 master = posix_openpt(O_RDWR|O_NOCTTY);
 if (master == -1)
  return (-1);

 if (grantpt(master) == -1)
  goto bad;

 if (unlockpt(master) == -1)
  goto bad;

 slavename = ptsname(master);
 if (slavename == ((void*)0))
  goto bad;

 slave = open(slavename, O_RDWR);
 if (slave == -1)
  goto bad;

 *amaster = master;
 *aslave = slave;

 if (name)
  strcpy(name, slavename);
 if (termp)
  tcsetattr(slave, TCSAFLUSH, termp);
 if (winp)
  ioctl(slave, TIOCSWINSZ, (char *)winp);

 return (0);

bad: close(master);
 return (-1);
}

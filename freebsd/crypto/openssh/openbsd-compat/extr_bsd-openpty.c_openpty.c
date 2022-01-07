
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttbuf ;
struct winsize {int dummy; } ;
struct termios {int c_lflag; int c_oflag; int c_iflag; } ;
typedef int ptbuf ;
typedef int mysig_t ;


 int ECHO ;
 int ICANON ;
 int ICRNL ;
 int ISIG ;
 int I_PUSH ;
 int ONLCR ;
 int OPOST ;
 int O_NOCTTY ;
 int O_RDWR ;
 int SIGCHLD ;
 int SIG_DFL ;
 int TCSANOW ;
 char* _getpty (int*,int,int,int ) ;
 int close (int) ;
 scalar_t__ grantpt (int) ;
 int ioctl (int,int ,char*) ;
 int open (char const*,int) ;
 char* ptsname (int) ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,char const,...) ;
 int strlen (char const*) ;
 int tcgetattr (int,struct termios*) ;
 int tcsetattr (int,int ,struct termios*) ;
 char* ttyname (int) ;
 scalar_t__ unlockpt (int) ;

int
openpty(int *amaster, int *aslave, char *name, struct termios *termp,
   struct winsize *winp)
{
 char ptbuf[64], ttbuf[64];
 int i;
 const char *ptymajors = "pqrstuvwxyzabcdefghijklmno"
     "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
 const char *ptyminors = "0123456789abcdef";
 int num_minors = strlen(ptyminors);
 int num_ptys = strlen(ptymajors) * num_minors;
 struct termios tio;

 for (i = 0; i < num_ptys; i++) {
  snprintf(ptbuf, sizeof(ptbuf), "/dev/pty%c%c",
      ptymajors[i / num_minors], ptyminors[i % num_minors]);
  snprintf(ttbuf, sizeof(ttbuf), "/dev/tty%c%c",
      ptymajors[i / num_minors], ptyminors[i % num_minors]);

  if ((*amaster = open(ptbuf, O_RDWR | O_NOCTTY)) == -1) {

   snprintf(ptbuf, sizeof(ptbuf), "/dev/ptyp%d", i);
   snprintf(ttbuf, sizeof(ttbuf), "/dev/ttyp%d", i);
   if ((*amaster = open(ptbuf, O_RDWR | O_NOCTTY)) == -1)
    continue;
  }


  if ((*aslave = open(ttbuf, O_RDWR | O_NOCTTY)) == -1) {
   close(*amaster);
   return (-1);
  }

  if (tcgetattr(*amaster, &tio) != -1) {
   tio.c_lflag |= (ECHO | ISIG | ICANON);
   tio.c_oflag |= (OPOST | ONLCR);
   tio.c_iflag |= ICRNL;
   tcsetattr(*amaster, TCSANOW, &tio);
  }

  return (0);
 }
 return (-1);

}

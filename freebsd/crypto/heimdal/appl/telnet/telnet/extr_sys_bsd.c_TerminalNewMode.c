
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_iflag; int* c_cc; int c_cflag; int c_lflag; int c_oflag; } ;
typedef int sigset_t ;
typedef void* cc_t ;


 int CS8 ;
 int CSIZE ;
 int ECHO ;
 int ECHOCTL ;
 int FIONBIO ;
 int ICANON ;
 int ICRNL ;
 int ISIG ;
 int ISTRIP ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int MODE_ECHO ;
 int MODE_EDIT ;
 int MODE_FLOW ;
 int MODE_FORCE ;
 int MODE_INBIN ;
 int MODE_LIT_ECHO ;
 int MODE_OUT8 ;
 int MODE_OUTBIN ;
 int MODE_SOFT_TAB ;
 int MODE_TRAPSIG ;
 int NOKERNINFO ;
 int ONLCR ;
 int OPOST ;
 int OXTABS ;
 int PARENB ;
 int SIGINFO ;
 int SIGTSTP ;
 int SIG_DFL ;
 int SIG_UNBLOCK ;
 int SYNCHing ;
 int TAB3 ;
 int TABDLY ;
 int TCSADRAIN ;
 int TCSANOW ;
 size_t VDSUSP ;
 size_t VEOL ;
 size_t VEOL2 ;
 size_t VLNEXT ;
 size_t VMIN ;
 size_t VTIME ;
 scalar_t__ _POSIX_VDISABLE ;
 int ayt ;
 int ayt_status ;
 scalar_t__ crlf ;
 scalar_t__ escape ;
 int flushout ;
 int globalmode ;
 int ioctl (int ,int ,char*) ;
 int localchars ;
 struct termios new_tc ;
 struct termios old_tc ;
 scalar_t__ restartany ;
 scalar_t__ rlogin ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;
 int susp ;
 int tcgetattr (int ,struct termios*) ;
 scalar_t__ tcsetattr (int ,int ,struct termios*) ;
 int tin ;
 int tout ;
 int ttyflush (int) ;

void
TerminalNewMode(int f)
{
    static int prevmode = 0;
    struct termios tmp_tc;
    int onoff;
    int old;
    cc_t esc;

    globalmode = f&~MODE_FORCE;
    if (prevmode == f)
 return;
    old = ttyflush(SYNCHing|flushout);
    if (old < 0 || old > 1) {
 tcgetattr(tin, &tmp_tc);
 do {



     tcsetattr(tin, TCSADRAIN, &tmp_tc);
     old = ttyflush(SYNCHing|flushout);
 } while (old < 0 || old > 1);
    }

    old = prevmode;
    prevmode = f&~MODE_FORCE;
    tmp_tc = new_tc;

    if (f&MODE_ECHO) {
 tmp_tc.c_lflag |= ECHO;
 tmp_tc.c_oflag |= ONLCR;
 if (crlf)
  tmp_tc.c_iflag |= ICRNL;
    } else {
 tmp_tc.c_lflag &= ~ECHO;
 tmp_tc.c_oflag &= ~ONLCR;




    }

    if ((f&MODE_FLOW) == 0) {
 tmp_tc.c_iflag &= ~(IXOFF|IXON);
    } else {
 if (restartany < 0) {
  tmp_tc.c_iflag |= IXOFF|IXON;
 } else if (restartany > 0) {
  tmp_tc.c_iflag |= IXOFF|IXON|IXANY;
 } else {
  tmp_tc.c_iflag |= IXOFF|IXON;
  tmp_tc.c_iflag &= ~IXANY;
 }
    }

    if ((f&MODE_TRAPSIG) == 0) {
 tmp_tc.c_lflag &= ~ISIG;
 localchars = 0;
    } else {
 tmp_tc.c_lflag |= ISIG;
 localchars = 1;
    }

    if (f&MODE_EDIT) {
 tmp_tc.c_lflag |= ICANON;
    } else {
 tmp_tc.c_lflag &= ~ICANON;
 tmp_tc.c_iflag &= ~ICRNL;
 tmp_tc.c_cc[VMIN] = 1;
 tmp_tc.c_cc[VTIME] = 0;
    }

    if ((f&(MODE_EDIT|MODE_TRAPSIG)) == 0) {



    }

    if (f&MODE_SOFT_TAB) {







    } else {






    }

    if (f&MODE_LIT_ECHO) {



    } else {



    }

    if (f == -1) {
 onoff = 0;
    } else {
 if (f & MODE_INBIN)
  tmp_tc.c_iflag &= ~ISTRIP;
 else
  tmp_tc.c_iflag |= ISTRIP;
 if ((f & MODE_OUTBIN) || (f & MODE_OUT8)) {
  tmp_tc.c_cflag &= ~(CSIZE|PARENB);
  tmp_tc.c_cflag |= CS8;
  if(f & MODE_OUTBIN)
      tmp_tc.c_oflag &= ~OPOST;
  else
      tmp_tc.c_oflag |= OPOST;
 } else {
  tmp_tc.c_cflag &= ~(CSIZE|PARENB);
  tmp_tc.c_cflag |= old_tc.c_cflag & (CSIZE|PARENB);
  tmp_tc.c_oflag |= OPOST;
 }
 onoff = 1;
    }

    if (f != -1) {
 esc = (rlogin != _POSIX_VDISABLE) ? rlogin : escape;
 if ((tmp_tc.c_cc[VEOL] != esc)



     ) {
  if (tmp_tc.c_cc[VEOL] == (cc_t)(_POSIX_VDISABLE))
      tmp_tc.c_cc[VEOL] = esc;




 }
    } else {
        sigset_t sm;
 tmp_tc = old_tc;
    }
    if (tcsetattr(tin, TCSADRAIN, &tmp_tc) < 0)
 tcsetattr(tin, TCSANOW, &tmp_tc);

    ioctl(tin, FIONBIO, (char *)&onoff);
    ioctl(tout, FIONBIO, (char *)&onoff);

}

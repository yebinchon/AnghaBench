
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termio {int c_iflag; int* c_cc; int c_cflag; int c_lflag; int c_oflag; } ;
struct tchars {void* t_brkc; scalar_t__ t_eofc; scalar_t__ t_quitc; scalar_t__ t_intrc; scalar_t__ t_stopc; scalar_t__ t_startc; } ;
struct sgttyb {int sg_flags; } ;
struct ltchars {scalar_t__ t_dsuspc; scalar_t__ t_lnextc; scalar_t__ t_suspc; } ;
typedef void* cc_t ;


 int CBREAK ;
 int CRMOD ;
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
 int LCTLECH ;
 int LLITOUT ;
 int LPASS8 ;
 int MODE_ECHO ;
 int MODE_EDIT ;
 int MODE_FLOW ;
 int MODE_FORCE ;
 int MODE_INBIN ;
 int MODE_LIT_ECHO ;
 int MODE_OUTBIN ;
 int MODE_SOFT_TAB ;
 int MODE_TRAPSIG ;
 int NOKERNINFO ;
 int ONLCR ;
 int OPOST ;
 int OXTABS ;
 int PARENB ;
 int SIGINFO ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTSTP ;
 void SIG_DFL (int) ;
 int SYNCHing ;
 int TAB3 ;
 int TABDLY ;
 int TCSADRAIN ;
 int TCSANOW ;
 int TIOCLSET ;
 int TIOCSETC ;
 int TIOCSETN ;
 int TIOCSLTC ;
 size_t VDSUSP ;
 size_t VEOL ;
 size_t VEOL2 ;
 size_t VLNEXT ;
 size_t VMIN ;
 size_t VTIME ;
 int XTABS ;
 scalar_t__ _POSIX_VDISABLE ;
 void ayt (int) ;
 scalar_t__ ayt_status ;
 scalar_t__ crlf ;
 scalar_t__ escape ;
 int flushout ;
 int globalmode ;
 void intr (int) ;
 void intr2 (int) ;
 int ioctl (int ,int ,char*) ;
 int localchars ;
 struct termio new_tc ;
 struct ltchars nltc ;
 struct tchars ntc ;
 struct sgttyb nttyb ;
 struct termio old_tc ;
 int olmode ;
 struct ltchars oltc ;
 struct tchars otc ;
 struct sgttyb ottyb ;
 scalar_t__ restartany ;
 scalar_t__ rlogin ;
 int sigblock (int ) ;
 int signal (int,void (*) (int)) ;
 int sigrelse (int) ;
 int sigsetmask (int) ;
 void susp (int) ;
 int tcgetattr (int ,struct termio*) ;
 scalar_t__ tcsetattr (int ,int ,struct termio*) ;
 int tin ;
 int tout ;
 int ttyflush (int) ;

void
TerminalNewMode(int f)
{
    static int prevmode = 0;

    struct tchars tc;
    struct ltchars ltc;
    struct sgttyb sb;
    int lmode;



    int onoff;
    int old;
    cc_t esc;

    globalmode = f&~MODE_FORCE;
    if (prevmode == f)
 return;
    old = ttyflush(SYNCHing|flushout);
    if (old < 0 || old > 1) {



 do {






     old = ttyflush(SYNCHing|flushout);
 } while (old < 0 || old > 1);
    }

    old = prevmode;
    prevmode = f&~MODE_FORCE;

    sb = nttyb;
    tc = ntc;
    ltc = nltc;
    lmode = olmode;




    if (f&MODE_ECHO) {

 sb.sg_flags |= ECHO;






    } else {

 sb.sg_flags &= ~ECHO;




    }

    if ((f&MODE_FLOW) == 0) {

 tc.t_startc = _POSIX_VDISABLE;
 tc.t_stopc = _POSIX_VDISABLE;
    }

    if ((f&MODE_TRAPSIG) == 0) {

 tc.t_intrc = _POSIX_VDISABLE;
 tc.t_quitc = _POSIX_VDISABLE;
 tc.t_eofc = _POSIX_VDISABLE;
 ltc.t_suspc = _POSIX_VDISABLE;
 ltc.t_dsuspc = _POSIX_VDISABLE;



 localchars = 0;
    } else {



 localchars = 1;
    }

    if (f&MODE_EDIT) {

 sb.sg_flags &= ~CBREAK;
 sb.sg_flags |= CRMOD;



    } else {

 sb.sg_flags |= CBREAK;
 if (f&MODE_ECHO)
     sb.sg_flags |= CRMOD;
 else
     sb.sg_flags &= ~CRMOD;






    }

    if ((f&(MODE_EDIT|MODE_TRAPSIG)) == 0) {

 ltc.t_lnextc = _POSIX_VDISABLE;





    }

    if (f&MODE_SOFT_TAB) {

 sb.sg_flags |= XTABS;
    } else {

 sb.sg_flags &= ~XTABS;
    }

    if (f&MODE_LIT_ECHO) {

 lmode &= ~LCTLECH;





    } else {

 lmode |= LCTLECH;





    }

    if (f == -1) {
 onoff = 0;
    } else {

 if (f & MODE_OUTBIN)
  lmode |= LLITOUT;
 else
  lmode &= ~LLITOUT;

 if (f & MODE_INBIN)
  lmode |= LPASS8;
 else
  lmode &= ~LPASS8;
 onoff = 1;
    }

    if (f != -1) {
 ltc.t_dsuspc = _POSIX_VDISABLE;
 if (tc.t_brkc == (cc_t)(_POSIX_VDISABLE))
  tc.t_brkc = esc;

    } else {
 ltc = oltc;
 tc = otc;
 sb = ottyb;
 lmode = olmode;



    }

    ioctl(tin, TIOCLSET, (char *)&lmode);
    ioctl(tin, TIOCSLTC, (char *)&ltc);
    ioctl(tin, TIOCSETC, (char *)&tc);
    ioctl(tin, TIOCSETN, (char *)&sb);





    ioctl(tin, FIONBIO, (char *)&onoff);
    ioctl(tout, FIONBIO, (char *)&onoff);

}

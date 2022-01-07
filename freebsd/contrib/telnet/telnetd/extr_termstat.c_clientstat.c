
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; int ws_row; } ;


 int IAC ;
 int KLUDGE_LINEMODE ;

 int MODE_ACK ;
 int MODE_EDIT ;
 int MODE_LIT_ECHO ;
 int MODE_MASK ;
 int MODE_SOFT_TAB ;
 int MODE_TRAPSIG ;
 int REAL_LINEMODE ;
 int SB ;
 int SE ;
 int TELOPT_ECHO ;



 int TIOCSWINSZ ;
 int WILL ;
 int alwayslinemode ;
 int def_col ;
 int def_row ;
 int def_rspeed ;
 int def_tspeed ;
 int editmode ;
 int init_termbuf () ;
 int ioctl (int ,int ,char*) ;
 int linemode ;
 int lmodetype ;
 int localstat () ;
 int netflush () ;
 int output_data (char*,int ,int ,int const,int const,int,int ,int ) ;
 int pty ;
 int send_will (int ,int) ;
 int set_termbuf () ;
 int terminit () ;
 int tty_isediting () ;
 int tty_islitecho () ;
 int tty_issofttab () ;
 int tty_istrapsig () ;
 int tty_rspeed (int) ;
 int tty_setedit (int) ;
 int tty_setlinemode (int) ;
 int tty_setlitecho (int) ;
 int tty_setsig (int) ;
 int tty_setsofttab (int) ;
 int tty_tspeed (int) ;
 int useeditmode ;
 int uselinemode ;

void
clientstat(int code, int parm1, int parm2)
{




 init_termbuf();




 switch (code) {
 case 129:
  break;

 case 128:
     {
  def_tspeed = parm1;
  def_rspeed = parm2;
  tty_rspeed(parm2);
  tty_tspeed(parm1);
  set_termbuf();

  break;

     }

 default:

  break;
 }

 netflush();

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {int ws_col; int ws_row; } ;




 int TIOCSWINSZ ;
 int def_col ;
 int def_row ;
 int def_rspeed ;
 int def_tspeed ;
 int init_termbuf () ;
 int ioctl (int ,int ,char*) ;
 int netflush () ;
 int ourpty ;
 int set_termbuf () ;
 int tty_rspeed (int) ;
 int tty_tspeed (int) ;

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


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ioctl_t ;
typedef int ioclt_t ;
 int ERR_SILENT ;

 scalar_t__ GettingInput ;
 int LFLUSHO ;
 int SHDIAG ;
 int SHOUT ;
 int TIOCLBIC ;
 int TIOCLGET ;
 int Tty_raw_mode ;
 scalar_t__ didfds ;
 int errno ;
 int exitset ;
 int fixerror () ;
 scalar_t__ haderr ;
 scalar_t__ handle_interrupt ;
 scalar_t__ ioctl (int,int ,int ) ;
 char* linbuf ;
 char* linp ;
 int lmode ;
 int stderror (int ) ;
 int xexit (int) ;
 int xwrite (int,char*,int) ;

void
flush(void)
{
    int unit, oldexitset = exitset;
    static int interrupted = 0;



    if (linp == linbuf)
 return;
    if (GettingInput && !Tty_raw_mode && linp < &linbuf[sizeof linbuf - 10])
 return;
    if (handle_interrupt)
       exitset = 1;

    if (interrupted) {
 interrupted = 0;
 linp = linbuf;
 if (handle_interrupt)
     fixerror();
 else
     stderror(ERR_SILENT);
    }
    interrupted = 1;
    if (haderr)
 unit = didfds ? 2 : SHDIAG;
    else
 unit = didfds ? 1 : SHOUT;
    if (xwrite(unit, linbuf, linp - linbuf) == -1)
 switch (errno) {


 case 132:






 case 129:





 case 130:


 case 134:





 case 128:





 case 131:





 case 133:


     if (handle_interrupt == 0)
  xexit(1);

 default:
     if (handle_interrupt)
  fixerror();
     else
  stderror(ERR_SILENT);
     break;
 }

    exitset = oldexitset;
    linp = linbuf;
    interrupted = 0;
}

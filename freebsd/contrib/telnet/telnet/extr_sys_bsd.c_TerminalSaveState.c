
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CONTROL (char) ;
 int TIOCGETC ;
 int TIOCGETP ;
 int TIOCGLTC ;
 int TIOCLGET ;
 int ioctl (int ,int ,char*) ;
 int new_tc ;
 scalar_t__ nltc ;
 scalar_t__ ntc ;
 scalar_t__ nttyb ;
 int old_tc ;
 int olmode ;
 scalar_t__ oltc ;
 scalar_t__ otc ;
 scalar_t__ ottyb ;
 int tcgetattr (int ,int *) ;
 void* termAytChar ;
 void* termFlushChar ;
 void* termLiteralNextChar ;
 void* termRprntChar ;
 void* termStartChar ;
 void* termStopChar ;
 void* termWerasChar ;

void
TerminalSaveState(void)
{

    ioctl(0, TIOCGETP, (char *)&ottyb);
    ioctl(0, TIOCGETC, (char *)&otc);
    ioctl(0, TIOCGLTC, (char *)&oltc);
    ioctl(0, TIOCLGET, (char *)&olmode);

    ntc = otc;
    nltc = oltc;
    nttyb = ottyb;
}

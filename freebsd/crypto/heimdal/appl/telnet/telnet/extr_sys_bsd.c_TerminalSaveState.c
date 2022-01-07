
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* CONTROL (char) ;
 int new_tc ;
 int old_tc ;
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
    tcgetattr(0, &old_tc);

    new_tc = old_tc;


    termFlushChar = CONTROL('O');


    termWerasChar = CONTROL('W');


    termRprntChar = CONTROL('R');


    termLiteralNextChar = CONTROL('V');


    termStartChar = CONTROL('Q');


    termStopChar = CONTROL('S');


    termAytChar = CONTROL('T');

}

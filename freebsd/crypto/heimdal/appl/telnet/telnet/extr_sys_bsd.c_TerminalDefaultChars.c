
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int c_cc; } ;
struct TYPE_3__ {int c_cc; } ;


 void* CONTROL (char) ;
 int memmove (int ,int ,int) ;
 TYPE_2__ new_tc ;
 TYPE_1__ old_tc ;
 void* termAytChar ;
 void* termFlushChar ;
 void* termLiteralNextChar ;
 void* termRprntChar ;
 void* termStartChar ;
 void* termStopChar ;
 void* termWerasChar ;

void
TerminalDefaultChars(void)
{
    memmove(new_tc.c_cc, old_tc.c_cc, sizeof(old_tc.c_cc));

    termFlushChar = CONTROL('O');


    termWerasChar = CONTROL('W');


    termRprntChar = CONTROL('R');


    termLiteralNextChar = CONTROL('V');


    termStartChar = CONTROL('Q');


    termStopChar = CONTROL('S');


    termAytChar = CONTROL('T');

}

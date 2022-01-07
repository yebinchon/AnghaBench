
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int c_cc; } ;
struct TYPE_7__ {int sg_erase; int sg_kill; } ;
struct TYPE_6__ {int c_cc; } ;
struct TYPE_5__ {int sg_erase; int sg_kill; } ;


 void* CONTROL (char) ;
 int memcpy (int ,int ,int) ;
 TYPE_4__ new_tc ;
 int nltc ;
 int ntc ;
 TYPE_3__ nttyb ;
 TYPE_2__ old_tc ;
 int oltc ;
 int otc ;
 TYPE_1__ ottyb ;
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

    ntc = otc;
    nltc = oltc;
    nttyb.sg_kill = ottyb.sg_kill;
    nttyb.sg_erase = ottyb.sg_erase;
}

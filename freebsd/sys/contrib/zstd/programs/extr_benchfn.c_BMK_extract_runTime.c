
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ error_tag_never_ever_use_directly; int internal_never_ever_use_directly; } ;
typedef int BMK_runTime_t ;
typedef TYPE_1__ BMK_runOutcome_t ;


 int CONTROL (int) ;

BMK_runTime_t BMK_extract_runTime(BMK_runOutcome_t outcome)
{
    CONTROL(outcome.error_tag_never_ever_use_directly == 0);
    return outcome.internal_never_ever_use_directly;
}

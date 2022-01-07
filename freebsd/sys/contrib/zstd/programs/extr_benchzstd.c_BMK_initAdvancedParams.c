
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ const BMK_advancedParams_t ;


 int BMK_TIMETEST_DEFAULT_S ;
 int BMK_both ;
 int ZSTD_lcm_auto ;

BMK_advancedParams_t BMK_initAdvancedParams(void) {
    BMK_advancedParams_t const res = {
        BMK_both,
        BMK_TIMETEST_DEFAULT_S,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        ZSTD_lcm_auto
    };
    return res;
}

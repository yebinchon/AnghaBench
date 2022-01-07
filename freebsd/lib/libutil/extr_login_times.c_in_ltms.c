
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {scalar_t__ lt_dow; } ;
typedef TYPE_1__ login_time_t ;


 int LC_MAXTIMES ;
 scalar_t__ LTM_NONE ;
 scalar_t__ in_ltm (TYPE_1__ const*,struct tm*,int *) ;

int
in_ltms(const login_time_t *ltm, struct tm *tm, time_t *t)
{
    int i = 0;

    while (i < LC_MAXTIMES && ltm[i].lt_dow != LTM_NONE) {
 if (in_ltm(ltm + i, tm, t))
     return (i);
 i++;
    }
    return (-1);
}

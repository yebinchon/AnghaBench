
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {int minutes; int hours; int days; int weeks; int months; int years; scalar_t__ seconds; } ;
typedef TYPE_1__ ldns_duration_type ;



time_t
ldns_duration2time(const ldns_duration_type* duration)
{
    time_t period = 0;

    if (duration) {
        period += (duration->seconds);
        period += (duration->minutes)*60;
        period += (duration->hours)*3600;
        period += (duration->days)*86400;
        period += (duration->weeks)*86400*7;
        period += (duration->months)*86400*31;
        period += (duration->years)*86400*365;






    }
    return period;
}

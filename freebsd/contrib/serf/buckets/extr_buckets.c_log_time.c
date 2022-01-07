
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; int tm_usec; int tm_gmtoff; } ;
typedef TYPE_1__ apr_time_exp_t ;


 int apr_time_exp_lt (TYPE_1__*,int ) ;
 int apr_time_now () ;
 int fprintf (int ,char*,int,int,int,int,int,int,int,int) ;
 int stderr ;

__attribute__((used)) static void log_time()
{
    apr_time_exp_t tm;

    apr_time_exp_lt(&tm, apr_time_now());
    fprintf(stderr, "[%d-%02d-%02dT%02d:%02d:%02d.%06d%+03d] ",
            1900 + tm.tm_year, 1 + tm.tm_mon, tm.tm_mday,
            tm.tm_hour, tm.tm_min, tm.tm_sec, tm.tm_usec,
            tm.tm_gmtoff/3600);
}

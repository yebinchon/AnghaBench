
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timezone {int dummy; } ;
typedef int TimeType ;


 int TR (int ,char*) ;
 int TRACE_IEVENT ;
 int gettimeofday (int*,struct timezone*) ;
 int time (int*) ;

__attribute__((used)) static long
_nc_gettime(TimeType * t0, int first)
{
    long res;
    time_t t1 = time((time_t *) 0);
    if (first) {
 *t0 = t1;
    }
    res = (t1 - *t0) * 1000;

    TR(TRACE_IEVENT, ("%s time: %ld msec", first ? "get" : "elapsed", res));
    return res;
}

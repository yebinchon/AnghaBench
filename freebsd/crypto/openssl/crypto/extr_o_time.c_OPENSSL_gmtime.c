
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 struct tm* gmtime (int const*) ;
 int * gmtime_r (int const*,struct tm*) ;
 scalar_t__ gmtime_s (struct tm*,int const*) ;
 int memcpy (struct tm*,struct tm*,int) ;

struct tm *OPENSSL_gmtime(const time_t *timer, struct tm *result)
{
    struct tm *ts = ((void*)0);
    ts = gmtime(timer);
    if (ts == ((void*)0))
        return ((void*)0);

    memcpy(result, ts, sizeof(struct tm));
    ts = result;

    return ts;
}

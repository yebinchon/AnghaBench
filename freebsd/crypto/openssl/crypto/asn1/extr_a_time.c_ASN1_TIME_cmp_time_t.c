
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int ASN1_TIME ;


 int ASN1_TIME_to_tm (int const*,struct tm*) ;
 int OPENSSL_gmtime (int *,struct tm*) ;
 int OPENSSL_gmtime_diff (int*,int*,struct tm*,struct tm*) ;

int ASN1_TIME_cmp_time_t(const ASN1_TIME *s, time_t t)
{
    struct tm stm, ttm;
    int day, sec;

    if (!ASN1_TIME_to_tm(s, &stm))
        return -2;

    if (!OPENSSL_gmtime(&t, &ttm))
        return -2;

    if (!OPENSSL_gmtime_diff(&day, &sec, &ttm, &stm))
        return -2;

    if (day > 0 || sec > 0)
        return 1;
    if (day < 0 || sec < 0)
        return -1;
    return 0;
}

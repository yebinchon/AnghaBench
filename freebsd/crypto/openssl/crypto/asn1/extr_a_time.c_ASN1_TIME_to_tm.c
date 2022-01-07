
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int ASN1_TIME ;


 int * OPENSSL_gmtime (int *,struct tm*) ;
 int asn1_time_to_tm (struct tm*,int const*) ;
 int memset (struct tm*,int ,int) ;
 int time (int *) ;

int ASN1_TIME_to_tm(const ASN1_TIME *s, struct tm *tm)
{
    if (s == ((void*)0)) {
        time_t now_t;

        time(&now_t);
        memset(tm, 0, sizeof(*tm));
        if (OPENSSL_gmtime(&now_t, tm) != ((void*)0))
            return 1;
        return 0;
    }

    return asn1_time_to_tm(tm, s);
}

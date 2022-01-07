
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
typedef int ASN1_TIME ;


 int ASN1_F_ASN1_TIME_ADJ ;
 int ASN1_R_ERROR_GETTING_TIME ;
 int ASN1err (int ,int ) ;
 struct tm* OPENSSL_gmtime (int *,struct tm*) ;
 int OPENSSL_gmtime_adj (struct tm*,int,long) ;
 int V_ASN1_UNDEF ;
 int * asn1_time_from_tm (int *,struct tm*,int ) ;

ASN1_TIME *ASN1_TIME_adj(ASN1_TIME *s, time_t t,
                         int offset_day, long offset_sec)
{
    struct tm *ts;
    struct tm data;

    ts = OPENSSL_gmtime(&t, &data);
    if (ts == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_TIME_ADJ, ASN1_R_ERROR_GETTING_TIME);
        return ((void*)0);
    }
    if (offset_day || offset_sec) {
        if (!OPENSSL_gmtime_adj(ts, offset_day, offset_sec))
            return ((void*)0);
    }
    return asn1_time_from_tm(s, ts, V_ASN1_UNDEF);
}

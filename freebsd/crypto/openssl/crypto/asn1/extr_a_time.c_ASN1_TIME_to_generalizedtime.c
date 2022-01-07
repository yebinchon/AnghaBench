
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int dummy; } ;
typedef int ASN1_TIME ;
typedef int ASN1_GENERALIZEDTIME ;


 int ASN1_TIME_to_tm (int const*,struct tm*) ;
 int V_ASN1_GENERALIZEDTIME ;
 int * asn1_time_from_tm (int *,struct tm*,int ) ;

ASN1_GENERALIZEDTIME *ASN1_TIME_to_generalizedtime(const ASN1_TIME *t,
                                                   ASN1_GENERALIZEDTIME **out)
{
    ASN1_GENERALIZEDTIME *ret = ((void*)0);
    struct tm tm;

    if (!ASN1_TIME_to_tm(t, &tm))
        return ((void*)0);

    if (out != ((void*)0))
        ret = *out;

    ret = asn1_time_from_tm(ret, &tm, V_ASN1_GENERALIZEDTIME);

    if (out != ((void*)0) && ret != ((void*)0))
        *out = ret;

    return ret;
}

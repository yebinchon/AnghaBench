
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_7__ {int type; int length; char const* data; } ;
typedef TYPE_1__ ASN1_TIME ;


 int ASN1_TIME_diff (int*,int*,TYPE_1__ const*,TYPE_1__*) ;
 int ASN1_TIME_free (TYPE_1__*) ;


 TYPE_1__* X509_time_adj (int *,int ,int *) ;
 int ascii_isdigit (char const) ;

int X509_cmp_time(const ASN1_TIME *ctm, time_t *cmp_time)
{
    static const size_t utctime_length = sizeof("YYMMDDHHMMSSZ") - 1;
    static const size_t generalizedtime_length = sizeof("YYYYMMDDHHMMSSZ") - 1;
    ASN1_TIME *asn1_cmp_time = ((void*)0);
    int i, day, sec, ret = 0;



    const char upper_z = 'Z';
    switch (ctm->type) {
    case 128:
        if (ctm->length != (int)(utctime_length))
            return 0;
        break;
    case 129:
        if (ctm->length != (int)(generalizedtime_length))
            return 0;
        break;
    default:
        return 0;
    }






    for (i = 0; i < ctm->length - 1; i++) {
        if (!ascii_isdigit(ctm->data[i]))
            return 0;
    }
    if (ctm->data[ctm->length - 1] != upper_z)
        return 0;






    asn1_cmp_time = X509_time_adj(((void*)0), 0, cmp_time);
    if (asn1_cmp_time == ((void*)0))
        goto err;
    if (!ASN1_TIME_diff(&day, &sec, ctm, asn1_cmp_time))
        goto err;





    ret = (day >= 0 && sec >= 0) ? -1 : 1;

 err:
    ASN1_TIME_free(asn1_cmp_time);
    return ret;
}

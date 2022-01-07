
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct tm {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; } ;
struct TYPE_7__ {int type; void* length; scalar_t__ data; } ;
typedef TYPE_1__ ASN1_TIME ;


 int ASN1_STRING_free (TYPE_1__*) ;
 TYPE_1__* ASN1_STRING_new () ;
 int ASN1_STRING_set (TYPE_1__*,int *,size_t const) ;
 void* BIO_snprintf (char*,size_t const,char*,int,scalar_t__,int ,int ,int ,int ) ;
 int V_ASN1_GENERALIZEDTIME ;
 int V_ASN1_UNDEF ;
 int V_ASN1_UTCTIME ;
 int ebcdic2ascii (scalar_t__,scalar_t__,void*) ;
 scalar_t__ is_utc (int) ;

ASN1_TIME *asn1_time_from_tm(ASN1_TIME *s, struct tm *ts, int type)
{
    char* p;
    ASN1_TIME *tmps = ((void*)0);
    const size_t len = 20;

    if (type == V_ASN1_UNDEF) {
        if (is_utc(ts->tm_year))
            type = V_ASN1_UTCTIME;
        else
            type = V_ASN1_GENERALIZEDTIME;
    } else if (type == V_ASN1_UTCTIME) {
        if (!is_utc(ts->tm_year))
            goto err;
    } else if (type != V_ASN1_GENERALIZEDTIME) {
        goto err;
    }

    if (s == ((void*)0))
        tmps = ASN1_STRING_new();
    else
        tmps = s;
    if (tmps == ((void*)0))
        return ((void*)0);

    if (!ASN1_STRING_set(tmps, ((void*)0), len))
        goto err;

    tmps->type = type;
    p = (char*)tmps->data;

    if (type == V_ASN1_GENERALIZEDTIME)
        tmps->length = BIO_snprintf(p, len, "%04d%02d%02d%02d%02d%02dZ",
                                    ts->tm_year + 1900, ts->tm_mon + 1,
                                    ts->tm_mday, ts->tm_hour, ts->tm_min,
                                    ts->tm_sec);
    else
        tmps->length = BIO_snprintf(p, len, "%02d%02d%02d%02d%02d%02dZ",
                                    ts->tm_year % 100, ts->tm_mon + 1,
                                    ts->tm_mday, ts->tm_hour, ts->tm_min,
                                    ts->tm_sec);




    return tmps;
 err:
    if (tmps != s)
        ASN1_STRING_free(tmps);
    return ((void*)0);
}

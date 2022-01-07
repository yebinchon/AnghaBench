
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_10__ {int flags; scalar_t__ type; } ;
typedef TYPE_1__ ASN1_TIME ;


 TYPE_1__* ASN1_GENERALIZEDTIME_adj (TYPE_1__*,int ,int,long) ;
 int ASN1_STRING_FLAG_MSTRING ;
 TYPE_1__* ASN1_TIME_adj (TYPE_1__*,int ,int,long) ;
 TYPE_1__* ASN1_UTCTIME_adj (TYPE_1__*,int ,int,long) ;
 scalar_t__ V_ASN1_GENERALIZEDTIME ;
 scalar_t__ V_ASN1_UTCTIME ;
 int time (int *) ;

ASN1_TIME *X509_time_adj_ex(ASN1_TIME *s,
                            int offset_day, long offset_sec, time_t *in_tm)
{
    time_t t;

    if (in_tm)
        t = *in_tm;
    else
        time(&t);

    if (s && !(s->flags & ASN1_STRING_FLAG_MSTRING)) {
        if (s->type == V_ASN1_UTCTIME)
            return ASN1_UTCTIME_adj(s, t, offset_day, offset_sec);
        if (s->type == V_ASN1_GENERALIZEDTIME)
            return ASN1_GENERALIZEDTIME_adj(s, t, offset_day, offset_sec);
    }
    return ASN1_TIME_adj(s, t, offset_day, offset_sec);
}

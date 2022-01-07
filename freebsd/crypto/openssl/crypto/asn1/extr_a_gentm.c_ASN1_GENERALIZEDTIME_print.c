
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
typedef int BIO ;
typedef TYPE_1__ ASN1_GENERALIZEDTIME ;


 int ASN1_TIME_print (int *,TYPE_1__ const*) ;
 scalar_t__ V_ASN1_GENERALIZEDTIME ;

int ASN1_GENERALIZEDTIME_print(BIO *bp, const ASN1_GENERALIZEDTIME *tm)
{
    if (tm->type != V_ASN1_GENERALIZEDTIME)
        return 0;
    return ASN1_TIME_print(bp, tm);
}

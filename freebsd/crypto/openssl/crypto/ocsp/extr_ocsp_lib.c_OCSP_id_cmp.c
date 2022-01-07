
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int serialNumber; } ;
typedef TYPE_1__ OCSP_CERTID ;


 int ASN1_INTEGER_cmp (int *,int *) ;
 int OCSP_id_issuer_cmp (TYPE_1__ const*,TYPE_1__ const*) ;

int OCSP_id_cmp(const OCSP_CERTID *a, const OCSP_CERTID *b)
{
    int ret;
    ret = OCSP_id_issuer_cmp(a, b);
    if (ret)
        return ret;
    return ASN1_INTEGER_cmp(&a->serialNumber, &b->serialNumber);
}

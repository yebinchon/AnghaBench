
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _save; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; int signatureAlgorithm; int signatureValue; } ;
typedef TYPE_2__ Certificate ;


 int _hx509_AlgorithmIdentifier_cmp (int *,int *) ;
 int der_heim_bit_string_cmp (int *,int *) ;
 int der_heim_octet_string_cmp (int *,int *) ;

int
_hx509_Certificate_cmp(const Certificate *p, const Certificate *q)
{
    int diff;
    diff = der_heim_bit_string_cmp(&p->signatureValue, &q->signatureValue);
    if (diff)
 return diff;
    diff = _hx509_AlgorithmIdentifier_cmp(&p->signatureAlgorithm,
       &q->signatureAlgorithm);
    if (diff)
 return diff;
    diff = der_heim_octet_string_cmp(&p->tbsCertificate._save,
         &q->tbsCertificate._save);
    return diff;
}

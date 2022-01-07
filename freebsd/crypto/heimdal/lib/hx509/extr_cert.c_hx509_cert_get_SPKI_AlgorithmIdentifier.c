
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_4__* hx509_cert ;
struct TYPE_9__ {TYPE_3__* data; } ;
struct TYPE_6__ {int algorithm; } ;
struct TYPE_7__ {TYPE_1__ subjectPublicKeyInfo; } ;
struct TYPE_8__ {TYPE_2__ tbsCertificate; } ;
typedef int AlgorithmIdentifier ;


 int copy_AlgorithmIdentifier (int *,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_cert_get_SPKI_AlgorithmIdentifier(hx509_context context,
     hx509_cert p,
     AlgorithmIdentifier *alg)
{
    int ret;

    ret = copy_AlgorithmIdentifier(&p->data->tbsCertificate.subjectPublicKeyInfo.algorithm, alg);
    if (ret)
 hx509_set_error_string(context, 0, ret,
          "Failed to copy SPKI AlgorithmIdentifier");
    return ret;
}

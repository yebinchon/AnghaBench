
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hx509_private_key ;
typedef int hx509_context ;
struct TYPE_7__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
struct TYPE_8__ {int length; int data; } ;
typedef TYPE_2__ heim_bit_string ;
typedef int AlgorithmIdentifier ;


 int _hx509_create_signature (int ,int const,int const*,TYPE_1__ const*,int *,TYPE_1__*) ;

int
_hx509_create_signature_bitstring(hx509_context context,
      const hx509_private_key signer,
      const AlgorithmIdentifier *alg,
      const heim_octet_string *data,
      AlgorithmIdentifier *signatureAlgorithm,
      heim_bit_string *sig)
{
    heim_octet_string os;
    int ret;

    ret = _hx509_create_signature(context, signer, alg,
      data, signatureAlgorithm, &os);
    if (ret)
 return ret;
    sig->data = os.data;
    sig->length = os.length * 8;
    return 0;
}

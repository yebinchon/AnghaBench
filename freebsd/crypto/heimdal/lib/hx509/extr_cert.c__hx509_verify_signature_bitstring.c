
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_7__ {int length; int data; } ;
typedef TYPE_1__ heim_octet_string ;
struct TYPE_8__ {int length; int data; } ;
typedef TYPE_2__ heim_bit_string ;
typedef int AlgorithmIdentifier ;


 int HX509_CRYPTO_SIG_INVALID_FORMAT ;
 int _hx509_verify_signature (int ,int const,int const*,TYPE_1__ const*,TYPE_1__*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_verify_signature_bitstring(hx509_context context,
      const hx509_cert signer,
      const AlgorithmIdentifier *alg,
      const heim_octet_string *data,
      const heim_bit_string *sig)
{
    heim_octet_string os;

    if (sig->length & 7) {
 hx509_set_error_string(context, 0, HX509_CRYPTO_SIG_INVALID_FORMAT,
          "signature not multiple of 8 bits");
 return HX509_CRYPTO_SIG_INVALID_FORMAT;
    }

    os.data = sig->data;
    os.length = sig->length / 8;

    return _hx509_verify_signature(context, signer, alg, data, &os);
}

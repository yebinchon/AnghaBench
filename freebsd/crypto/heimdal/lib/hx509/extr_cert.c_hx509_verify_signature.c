
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_cert ;
typedef int heim_octet_string ;
typedef int AlgorithmIdentifier ;


 int _hx509_verify_signature (int ,int const,int const*,int const*,int const*) ;

int
hx509_verify_signature(hx509_context context,
         const hx509_cert signer,
         const AlgorithmIdentifier *alg,
         const heim_octet_string *data,
         const heim_octet_string *sig)
{
    return _hx509_verify_signature(context, signer, alg, data, sig);
}

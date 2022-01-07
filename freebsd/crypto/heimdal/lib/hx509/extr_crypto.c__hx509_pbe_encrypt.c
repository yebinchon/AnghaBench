
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_lock ;
typedef int hx509_context ;
typedef int heim_octet_string ;
typedef int AlgorithmIdentifier ;


 int EINVAL ;
 int hx509_clear_error_string (int ) ;

int
_hx509_pbe_encrypt(hx509_context context,
     hx509_lock lock,
     const AlgorithmIdentifier *ai,
     const heim_octet_string *content,
     heim_octet_string *econtent)
{
    hx509_clear_error_string(context);
    return EINVAL;
}

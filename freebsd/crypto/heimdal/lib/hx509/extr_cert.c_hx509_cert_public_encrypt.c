
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_1__* hx509_cert ;
typedef int heim_oid ;
typedef int heim_octet_string ;
struct TYPE_3__ {int data; } ;


 int _hx509_public_encrypt (int ,int const*,int ,int *,int *) ;

int
hx509_cert_public_encrypt(hx509_context context,
      const heim_octet_string *cleartext,
      const hx509_cert p,
      heim_oid *encryption_oid,
      heim_octet_string *ciphertext)
{
    return _hx509_public_encrypt(context,
     cleartext, p->data,
     encryption_oid, ciphertext);
}

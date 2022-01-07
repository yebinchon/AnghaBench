
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_1__* hx509_cert ;
typedef int heim_oid ;
struct TYPE_9__ {scalar_t__ length; int * data; } ;
typedef TYPE_2__ heim_octet_string ;
struct TYPE_8__ {int * private_key; } ;


 int HX509_PRIVATE_KEY_MISSING ;
 int hx509_private_key_private_decrypt (int ,TYPE_2__ const*,int const*,int *,TYPE_2__*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_cert_private_decrypt(hx509_context context,
       const heim_octet_string *ciphertext,
       const heim_oid *encryption_oid,
       hx509_cert p,
       heim_octet_string *cleartext)
{
    cleartext->data = ((void*)0);
    cleartext->length = 0;

    if (p->private_key == ((void*)0)) {
 hx509_set_error_string(context, 0, HX509_PRIVATE_KEY_MISSING,
          "Private key missing");
 return HX509_PRIVATE_KEY_MISSING;
    }

    return hx509_private_key_private_decrypt(context,
           ciphertext,
           encryption_oid,
           p->private_key,
           cleartext);
}

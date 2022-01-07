
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_generate_private_context {int const* key_oid; } ;
typedef int hx509_context ;
typedef int heim_oid ;


 int ASN1_OID_ID_PKCS1_RSAENCRYPTION ;
 int EINVAL ;
 int ENOMEM ;
 struct hx509_generate_private_context* calloc (int,int) ;
 scalar_t__ der_heim_oid_cmp (int const*,int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_generate_private_key_init(hx509_context context,
     const heim_oid *oid,
     struct hx509_generate_private_context **ctx)
{
    *ctx = ((void*)0);

    if (der_heim_oid_cmp(oid, ASN1_OID_ID_PKCS1_RSAENCRYPTION) != 0) {
 hx509_set_error_string(context, 0, EINVAL,
          "private key not an RSA key");
 return EINVAL;
    }

    *ctx = calloc(1, sizeof(**ctx));
    if (*ctx == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }
    (*ctx)->key_oid = oid;

    return 0;
}

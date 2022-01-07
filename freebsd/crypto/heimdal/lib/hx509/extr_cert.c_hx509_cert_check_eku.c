
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_context ;
typedef int hx509_cert ;
typedef int heim_oid ;
struct TYPE_4__ {size_t len; int * val; } ;
typedef TYPE_1__ ExtKeyUsage ;


 int HX509_CERTIFICATE_MISSING_EKU ;
 int _hx509_get_cert (int ) ;
 scalar_t__ der_heim_oid_cmp (int const*,int *) ;
 int find_extension_eku (int ,TYPE_1__*) ;
 int free_ExtKeyUsage (TYPE_1__*) ;
 int hx509_clear_error_string (int ) ;
 int const* id_any_eku ;

int
hx509_cert_check_eku(hx509_context context, hx509_cert cert,
       const heim_oid *eku, int allow_any_eku)
{
    ExtKeyUsage e;
    int ret;
    size_t i;

    ret = find_extension_eku(_hx509_get_cert(cert), &e);
    if (ret) {
 hx509_clear_error_string(context);
 return ret;
    }

    for (i = 0; i < e.len; i++) {
 if (der_heim_oid_cmp(eku, &e.val[i]) == 0) {
     free_ExtKeyUsage(&e);
     return 0;
 }
 if (allow_any_eku) {






 }
    }
    free_ExtKeyUsage(&e);
    hx509_clear_error_string(context);
    return HX509_CERTIFICATE_MISSING_EKU;
}

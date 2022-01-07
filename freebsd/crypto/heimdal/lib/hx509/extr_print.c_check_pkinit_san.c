
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hx509_validate_ctx ;
struct TYPE_10__ {size_t length; int data; } ;
typedef TYPE_3__ heim_any ;
struct TYPE_8__ {unsigned int len; int* val; } ;
struct TYPE_9__ {TYPE_1__ name_string; } ;
struct TYPE_11__ {int realm; TYPE_2__ principalName; } ;
typedef TYPE_4__ KRB5PrincipalName ;


 int HX509_VALIDATE_F_VALIDATE ;
 int HX509_VALIDATE_F_VERBOSE ;
 int decode_KRB5PrincipalName (int ,size_t,TYPE_4__*,size_t*) ;
 int free_KRB5PrincipalName (TYPE_4__*) ;
 int validate_print (int ,int ,char*,...) ;

__attribute__((used)) static int
check_pkinit_san(hx509_validate_ctx ctx, heim_any *a)
{
    KRB5PrincipalName kn;
    unsigned i;
    size_t size;
    int ret;

    ret = decode_KRB5PrincipalName(a->data, a->length, &kn, &size);
    if (ret) {
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "Decoding kerberos name in SAN failed: %d", ret);
 return 1;
    }

    if (size != a->length) {
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "Decoding kerberos name have extra bits on the end");
 return 1;
    }


    for (i = 0; i < kn.principalName.name_string.len; i++) {
 validate_print(ctx, HX509_VALIDATE_F_VERBOSE, "%s",
         kn.principalName.name_string.val[i]);
 if (i + 1 < kn.principalName.name_string.len)
     validate_print(ctx, HX509_VALIDATE_F_VERBOSE, "/");
    }
    validate_print(ctx, HX509_VALIDATE_F_VERBOSE, "@");
    validate_print(ctx, HX509_VALIDATE_F_VERBOSE, "%s", kn.realm);

    free_KRB5PrincipalName(&kn);
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct cert_status {int haveAKI; } ;
typedef int hx509_validate_ctx ;
typedef enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
struct TYPE_11__ {TYPE_2__* keyIdentifier; } ;
struct TYPE_8__ {size_t length; int data; } ;
struct TYPE_10__ {TYPE_1__ extnValue; } ;
struct TYPE_9__ {int length; int data; } ;
typedef TYPE_3__ Extension ;
typedef TYPE_4__ AuthorityKeyIdentifier ;


 int HX509_VALIDATE_F_VALIDATE ;
 int HX509_VALIDATE_F_VERBOSE ;
 int check_Null (int ,struct cert_status*,int,TYPE_3__ const*) ;
 int decode_AuthorityKeyIdentifier (int ,size_t,TYPE_4__*,size_t*) ;
 int free (char*) ;
 int hex_encode (int ,int ,char**) ;
 int validate_print (int ,int ,char*,...) ;

__attribute__((used)) static int
check_authorityKeyIdentifier(hx509_validate_ctx ctx,
        struct cert_status *status,
        enum critical_flag cf,
        const Extension *e)
{
    AuthorityKeyIdentifier ai;
    size_t size;
    int ret;

    status->haveAKI = 1;
    check_Null(ctx, status, cf, e);

    ret = decode_AuthorityKeyIdentifier(e->extnValue.data,
     e->extnValue.length,
     &ai, &size);
    if (ret) {
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "Decoding AuthorityKeyIdentifier failed: %d", ret);
 return 1;
    }
    if (size != e->extnValue.length) {
 validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
         "Decoding SKI ahve extra bits on the end");
 return 1;
    }

    if (ai.keyIdentifier) {
 char *id;
 hex_encode(ai.keyIdentifier->data, ai.keyIdentifier->length, &id);
 if (id) {
     validate_print(ctx, HX509_VALIDATE_F_VERBOSE,
      "\tauthority key id: %s\n", id);
     free(id);
 }
    }

    return 0;
}

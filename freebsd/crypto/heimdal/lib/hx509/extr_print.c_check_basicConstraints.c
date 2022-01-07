
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct cert_status {int isca; } ;
typedef int hx509_validate_ctx ;
typedef enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
struct TYPE_10__ {scalar_t__* cA; int * pathLenConstraint; } ;
struct TYPE_8__ {size_t length; int data; } ;
struct TYPE_9__ {int critical; TYPE_1__ extnValue; } ;
typedef TYPE_2__ Extension ;
typedef TYPE_3__ BasicConstraints ;


 int HX509_VALIDATE_F_VALIDATE ;
 int HX509_VALIDATE_F_VERBOSE ;
 int check_Null (int ,struct cert_status*,int,TYPE_2__ const*) ;
 int decode_BasicConstraints (int ,size_t,TYPE_3__*,size_t*) ;
 int free_BasicConstraints (TYPE_3__*) ;
 int printf (char*,...) ;
 int validate_print (int ,int ,char*,...) ;

__attribute__((used)) static int
check_basicConstraints(hx509_validate_ctx ctx,
         struct cert_status *status,
         enum critical_flag cf,
         const Extension *e)
{
    BasicConstraints b;
    size_t size;
    int ret;

    check_Null(ctx, status, cf, e);

    ret = decode_BasicConstraints(e->extnValue.data, e->extnValue.length,
      &b, &size);
    if (ret) {
 printf("\tret = %d while decoding BasicConstraints\n", ret);
 return 0;
    }
    if (size != e->extnValue.length)
 printf("\tlength of der data isn't same as extension\n");

    validate_print(ctx, HX509_VALIDATE_F_VERBOSE,
     "\tis %sa CA\n", b.cA && *b.cA ? "" : "NOT ");
    if (b.pathLenConstraint)
 validate_print(ctx, HX509_VALIDATE_F_VERBOSE,
         "\tpathLenConstraint: %d\n", *b.pathLenConstraint);

    if (b.cA) {
 if (*b.cA) {
     if (!e->critical)
  validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
          "Is a CA and not BasicConstraints CRITICAL\n");
     status->isca = 1;
 }
 else
     validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
      "cA is FALSE, not allowed to be\n");
    }
    free_BasicConstraints(&b);

    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cert_status {int dummy; } ;
typedef int hx509_validate_ctx ;
typedef enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
struct TYPE_3__ {int critical; } ;
typedef TYPE_1__ Extension ;



 int HX509_VALIDATE_F_VALIDATE ;




 int _hx509_abort (char*) ;
 int validate_print (int ,int ,char*) ;

__attribute__((used)) static int
check_Null(hx509_validate_ctx ctx,
    struct cert_status *status,
    enum critical_flag cf, const Extension *e)
{
    switch(cf) {
    case 132:
 break;
    case 129:
 if (!e->critical)
     validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
      "\tCritical not set on SHOULD\n");
 break;
    case 128:
 if (e->critical)
     validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
      "\tCritical set on SHOULD NOT\n");
 break;
    case 131:
 if (!e->critical)
     validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
      "\tCritical not set on MUST\n");
 break;
    case 130:
 if (e->critical)
     validate_print(ctx, HX509_VALIDATE_F_VALIDATE,
      "\tCritical set on MUST NOT\n");
 break;
    default:
 _hx509_abort("internal check_Null state error");
    }
    return 0;
}

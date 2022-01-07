
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t max_alloc; } ;
typedef TYPE_1__ krb5_storage ;
typedef int krb5_error_code ;


 int HEIM_ERR_TOO_BIG ;

__attribute__((used)) static krb5_error_code
size_too_large(krb5_storage *sp, size_t size)
{
    if (sp->max_alloc && sp->max_alloc < size)
 return HEIM_ERR_TOO_BIG;
    return 0;
}

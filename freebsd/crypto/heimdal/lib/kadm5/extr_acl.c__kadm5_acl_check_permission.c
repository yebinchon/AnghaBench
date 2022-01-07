
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_const_principal ;
struct TYPE_4__ {unsigned int acl_flags; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;


 scalar_t__ check_flags (unsigned int,unsigned int) ;
 scalar_t__ fetch_acl (TYPE_1__*,int ,unsigned int*) ;

kadm5_ret_t
_kadm5_acl_check_permission(kadm5_server_context *context,
       unsigned op,
       krb5_const_principal princ)
{
    kadm5_ret_t ret;
    unsigned princ_flags;

    ret = check_flags (op, context->acl_flags);
    if (ret == 0)
 return ret;
    ret = fetch_acl (context, princ, &princ_flags);
    if (ret)
 return ret;
    return check_flags (op, princ_flags);
}

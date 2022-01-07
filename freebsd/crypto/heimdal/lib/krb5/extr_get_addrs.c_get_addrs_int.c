
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_9__ {scalar_t__ len; int * val; } ;
typedef TYPE_1__ krb5_addresses ;


 int EXTRA_ADDRESSES ;
 int SCAN_INTERFACES ;
 scalar_t__ find_all_addresses (int ,TYPE_1__*,int) ;
 int free (int *) ;
 scalar_t__ gethostname_fallback (int ,TYPE_1__*) ;
 scalar_t__ krb5_append_addresses (int ,TYPE_1__*,TYPE_1__*) ;
 int krb5_free_addresses (int ,TYPE_1__*) ;
 scalar_t__ krb5_get_extra_addresses (int ,TYPE_1__*) ;

__attribute__((used)) static krb5_error_code
get_addrs_int (krb5_context context, krb5_addresses *res, int flags)
{
    krb5_error_code ret = -1;

    res->len = 0;
    res->val = ((void*)0);

    if (flags & SCAN_INTERFACES) {
 ret = find_all_addresses (context, res, flags);
 if(ret || res->len == 0)
     ret = gethostname_fallback (context, res);
    } else {
 ret = 0;
    }

    if(ret == 0 && (flags & EXTRA_ADDRESSES)) {
 krb5_addresses a;

 ret = krb5_get_extra_addresses(context, &a);
 if(ret) {
     krb5_free_addresses(context, res);
     return ret;
 }
 ret = krb5_append_addresses(context, res, &a);
 if(ret) {
     krb5_free_addresses(context, res);
     return ret;
 }
 krb5_free_addresses(context, &a);
    }
    if(res->len == 0) {
 free(res->val);
 res->val = ((void*)0);
    }
    return ret;
}

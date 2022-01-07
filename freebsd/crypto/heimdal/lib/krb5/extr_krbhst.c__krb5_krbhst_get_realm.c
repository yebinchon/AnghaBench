
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* krb5_krbhst_handle ;
struct TYPE_3__ {char const* realm; } ;



const char *
_krb5_krbhst_get_realm(krb5_krbhst_handle handle)
{
    return handle->realm;
}

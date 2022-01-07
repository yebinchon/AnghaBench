
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int key_oid; } ;


 int der_copy_oid (int ,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_private_key_oid(hx509_context context,
         const hx509_private_key key,
         heim_oid *data)
{
    int ret;
    ret = der_copy_oid(key->ops->key_oid, data);
    if (ret)
 hx509_set_error_string(context, 0, ret, "malloc out of memory");
    return ret;
}

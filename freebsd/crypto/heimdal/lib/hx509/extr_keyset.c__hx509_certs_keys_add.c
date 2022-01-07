
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_private_key ;
typedef int hx509_context ;
typedef TYPE_2__* hx509_certs ;
struct TYPE_6__ {int ops_data; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* addkey ) (int ,TYPE_2__*,int ,int ) ;int name; } ;


 int EINVAL ;
 int hx509_set_error_string (int ,int ,int,char*,int ) ;
 int stub1 (int ,TYPE_2__*,int ,int ) ;

int
_hx509_certs_keys_add(hx509_context context,
        hx509_certs certs,
        hx509_private_key key)
{
    if (certs->ops->addkey == ((void*)0)) {
 hx509_set_error_string(context, 0, EINVAL,
          "keystore if type %s doesn't support "
          "key add operation",
          certs->ops->name);
 return EINVAL;
    }
    return (*certs->ops->addkey)(context, certs, certs->ops_data, key);
}

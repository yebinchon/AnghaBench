
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
struct TYPE_5__ {int (* getkeys ) (int ,TYPE_2__*,int ,int **) ;} ;


 int stub1 (int ,TYPE_2__*,int ,int **) ;

int
_hx509_certs_keys_get(hx509_context context,
        hx509_certs certs,
        hx509_private_key **keys)
{
    if (certs->ops->getkeys == ((void*)0)) {
 *keys = ((void*)0);
 return 0;
    }
    return (*certs->ops->getkeys)(context, certs, certs->ops_data, keys);
}

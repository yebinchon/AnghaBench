
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_lock ;
typedef int hx509_context ;
typedef TYPE_2__* hx509_certs ;
struct TYPE_6__ {int ops_data; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* store ) (int ,TYPE_2__*,int ,int,int ) ;int name; } ;


 int HX509_UNSUPPORTED_OPERATION ;
 int hx509_set_error_string (int ,int ,int,char*,int ) ;
 int stub1 (int ,TYPE_2__*,int ,int,int ) ;

int
hx509_certs_store(hx509_context context,
    hx509_certs certs,
    int flags,
    hx509_lock lock)
{
    if (certs->ops->store == ((void*)0)) {
 hx509_set_error_string(context, 0, HX509_UNSUPPORTED_OPERATION,
          "keystore if type %s doesn't support "
          "store operation",
          certs->ops->name);
 return HX509_UNSUPPORTED_OPERATION;
    }

    return (*certs->ops->store)(context, certs, certs->ops_data, flags, lock);
}

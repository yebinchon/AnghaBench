
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_2__* hx509_certs ;
typedef int hx509_cert ;
struct TYPE_6__ {int ops_data; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* add ) (int ,TYPE_2__*,int ,int ) ;int name; } ;


 int ENOENT ;
 int hx509_set_error_string (int ,int ,int,char*,int ) ;
 int stub1 (int ,TYPE_2__*,int ,int ) ;

int
hx509_certs_add(hx509_context context, hx509_certs certs, hx509_cert cert)
{
    if (certs->ops->add == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOENT,
          "Keyset type %s doesn't support add operation",
          certs->ops->name);
 return ENOENT;
    }

    return (*certs->ops->add)(context, certs, certs->ops_data, cert);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_cursor ;
typedef int hx509_context ;
typedef TYPE_2__* hx509_certs ;
typedef int * hx509_cert ;
struct TYPE_6__ {int ops_data; TYPE_1__* ops; } ;
struct TYPE_5__ {int (* iter ) (int ,TYPE_2__*,int ,int ,int **) ;} ;


 int stub1 (int ,TYPE_2__*,int ,int ,int **) ;

int
hx509_certs_next_cert(hx509_context context,
        hx509_certs certs,
        hx509_cursor cursor,
        hx509_cert *cert)
{
    *cert = ((void*)0);
    return (*certs->ops->iter)(context, certs, certs->ops_data, cursor, cert);
}

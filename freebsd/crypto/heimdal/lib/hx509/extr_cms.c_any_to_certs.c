
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;
struct TYPE_7__ {TYPE_2__* certificates; } ;
struct TYPE_6__ {size_t len; TYPE_1__* val; } ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_3__ SignedData ;


 int hx509_cert_free (int ) ;
 int hx509_cert_init_data (int ,int ,int ,int *) ;
 int hx509_certs_add (int ,int ,int ) ;

__attribute__((used)) static int
any_to_certs(hx509_context context, const SignedData *sd, hx509_certs certs)
{
    int ret;
    size_t i;

    if (sd->certificates == ((void*)0))
 return 0;

    for (i = 0; i < sd->certificates->len; i++) {
 hx509_cert c;

 ret = hx509_cert_init_data(context,
       sd->certificates->val[i].data,
       sd->certificates->val[i].length,
       &c);
 if (ret)
     return ret;
 ret = hx509_certs_add(context, certs, c);
 hx509_cert_free(c);
 if (ret)
     return ret;
    }

    return 0;
}

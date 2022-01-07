
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_crl ;
typedef int hx509_context ;
typedef int hx509_certs ;
struct TYPE_3__ {int revoked; } ;


 int hx509_certs_merge (int ,int ,int ) ;

int
hx509_crl_add_revoked_certs(hx509_context context,
       hx509_crl crl,
       hx509_certs certs)
{
    return hx509_certs_merge(context, crl->revoked, certs);
}

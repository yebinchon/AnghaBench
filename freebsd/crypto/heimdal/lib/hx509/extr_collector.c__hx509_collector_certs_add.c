
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_collector {int certs; } ;
typedef int hx509_context ;
typedef int hx509_cert ;


 int hx509_certs_add (int ,int ,int ) ;

int
_hx509_collector_certs_add(hx509_context context,
      struct hx509_collector *c,
      hx509_cert cert)
{
    return hx509_certs_add(context, c->certs, cert);
}

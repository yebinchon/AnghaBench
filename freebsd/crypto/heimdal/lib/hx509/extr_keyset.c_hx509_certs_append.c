
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_lock ;
typedef int hx509_context ;
typedef int hx509_certs ;


 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char const*,int ,int ,int *) ;
 int hx509_certs_merge (int ,int ,int ) ;

int
hx509_certs_append(hx509_context context,
     hx509_certs to,
     hx509_lock lock,
     const char *name)
{
    hx509_certs s;
    int ret;

    ret = hx509_certs_init(context, name, 0, lock, &s);
    if (ret)
 return ret;
    ret = hx509_certs_merge(context, to, s);
    hx509_certs_free(&s);
    return ret;
}

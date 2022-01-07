
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_cursor ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;


 int hx509_certs_end_seq (int ,int ,int ) ;
 int hx509_certs_next_cert (int ,int ,int ,int **) ;
 int hx509_certs_start_seq (int ,int ,int *) ;

int
hx509_get_one_cert(hx509_context context, hx509_certs certs, hx509_cert *c)
{
    hx509_cursor cursor;
    int ret;

    *c = ((void*)0);

    ret = hx509_certs_start_seq(context, certs, &cursor);
    if (ret)
 return ret;

    ret = hx509_certs_next_cert(context, certs, cursor, c);
    if (ret)
 return ret;

    hx509_certs_end_seq(context, certs, cursor);
    return 0;
}

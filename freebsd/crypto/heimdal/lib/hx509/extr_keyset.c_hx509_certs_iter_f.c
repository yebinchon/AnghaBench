
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_cursor ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;


 int hx509_cert_free (int *) ;
 int hx509_certs_end_seq (int ,int ,int ) ;
 int hx509_certs_next_cert (int ,int ,int ,int **) ;
 int hx509_certs_start_seq (int ,int ,int *) ;
 int stub1 (int ,void*,hx509_cert) ;

int
hx509_certs_iter_f(hx509_context context,
     hx509_certs certs,
     int (*func)(hx509_context, void *, hx509_cert),
     void *ctx)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret;

    ret = hx509_certs_start_seq(context, certs, &cursor);
    if (ret)
 return ret;

    while (1) {
 ret = hx509_certs_next_cert(context, certs, cursor, &c);
 if (ret)
     break;
 if (c == ((void*)0)) {
     ret = 0;
     break;
 }
 ret = (*func)(context, ctx, c);
 hx509_cert_free(c);
 if (ret)
     break;
    }

    hx509_certs_end_seq(context, certs, cursor);

    return ret;
}

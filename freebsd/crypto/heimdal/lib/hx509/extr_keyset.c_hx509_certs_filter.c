
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_query ;
typedef int hx509_cursor ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;


 int HX509_CERT_NOT_FOUND ;
 scalar_t__ _hx509_query_match_cert (int ,int const*,int *) ;
 int _hx509_query_statistic (int ,int ,int const*) ;
 int hx509_cert_free (int *) ;
 int hx509_certs_add (int ,int ,int *) ;
 int hx509_certs_end_seq (int ,int ,int ) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_certs_next_cert (int ,int ,int ,int **) ;
 int hx509_certs_start_seq (int ,int ,int *) ;
 int hx509_clear_error_string (int ) ;

int
hx509_certs_filter(hx509_context context,
     hx509_certs certs,
     const hx509_query *q,
     hx509_certs *result)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret, found = 0;

    _hx509_query_statistic(context, 0, q);

    ret = hx509_certs_init(context, "MEMORY:filter-certs", 0,
      ((void*)0), result);
    if (ret)
 return ret;

    ret = hx509_certs_start_seq(context, certs, &cursor);
    if (ret) {
 hx509_certs_free(result);
 return ret;
    }

    c = ((void*)0);
    while (1) {
 ret = hx509_certs_next_cert(context, certs, cursor, &c);
 if (ret)
     break;
 if (c == ((void*)0))
     break;
 if (_hx509_query_match_cert(context, q, c)) {
     hx509_certs_add(context, *result, c);
     found = 1;
 }
 hx509_cert_free(c);
    }

    hx509_certs_end_seq(context, certs, cursor);
    if (ret) {
 hx509_certs_free(result);
 return ret;
    }





    if (!found) {
 hx509_certs_free(result);
 hx509_clear_error_string(context);
 return HX509_CERT_NOT_FOUND;
    }

    return 0;
}

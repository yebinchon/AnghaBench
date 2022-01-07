
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hx509_query ;
typedef int hx509_cursor ;
typedef int hx509_context ;
typedef TYPE_2__* hx509_certs ;
typedef int * hx509_cert ;
struct TYPE_9__ {int ops_data; TYPE_1__* ops; } ;
struct TYPE_8__ {int (* query ) (int ,TYPE_2__*,int ,int const*,int **) ;} ;


 int HX509_CERT_NOT_FOUND ;
 scalar_t__ _hx509_query_match_cert (int ,int const*,int *) ;
 int _hx509_query_statistic (int ,int ,int const*) ;
 int hx509_cert_free (int *) ;
 int hx509_certs_end_seq (int ,TYPE_2__*,int ) ;
 int hx509_certs_next_cert (int ,TYPE_2__*,int ,int **) ;
 int hx509_certs_start_seq (int ,TYPE_2__*,int *) ;
 int hx509_clear_error_string (int ) ;
 int stub1 (int ,TYPE_2__*,int ,int const*,int **) ;

int
hx509_certs_find(hx509_context context,
   hx509_certs certs,
   const hx509_query *q,
   hx509_cert *r)
{
    hx509_cursor cursor;
    hx509_cert c;
    int ret;

    *r = ((void*)0);

    _hx509_query_statistic(context, 0, q);

    if (certs->ops->query)
 return (*certs->ops->query)(context, certs, certs->ops_data, q, r);

    ret = hx509_certs_start_seq(context, certs, &cursor);
    if (ret)
 return ret;

    c = ((void*)0);
    while (1) {
 ret = hx509_certs_next_cert(context, certs, cursor, &c);
 if (ret)
     break;
 if (c == ((void*)0))
     break;
 if (_hx509_query_match_cert(context, q, c)) {
     *r = c;
     break;
 }
 hx509_cert_free(c);
    }

    hx509_certs_end_seq(context, certs, cursor);
    if (ret)
 return ret;




    if (c == ((void*)0)) {
 hx509_clear_error_string(context);
 return HX509_CERT_NOT_FOUND;
    }

    return 0;
}

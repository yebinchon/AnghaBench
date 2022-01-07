
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int certificate; int match; } ;
typedef TYPE_1__ hx509_query ;
typedef int hx509_context ;
typedef int * hx509_certs ;
typedef int hx509_cert ;


 int HX509_QUERY_MATCH_CERTIFICATE ;
 int _hx509_get_cert (int const) ;
 int _hx509_query_clear (TYPE_1__*) ;
 int hx509_cert_free (int ) ;
 int hx509_certs_find (int ,int *,TYPE_1__*,int *) ;

__attribute__((used)) static int
certificate_is_anchor(hx509_context context,
        hx509_certs trust_anchors,
        const hx509_cert cert)
{
    hx509_query q;
    hx509_cert c;
    int ret;

    if (trust_anchors == ((void*)0))
 return 0;

    _hx509_query_clear(&q);

    q.match = HX509_QUERY_MATCH_CERTIFICATE;
    q.certificate = _hx509_get_cert(cert);

    ret = hx509_certs_find(context, trust_anchors, &q, &c);
    if (ret == 0)
 hx509_cert_free(c);
    return ret == 0;
}

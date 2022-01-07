
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hx509_peer_info ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;
typedef int heim_oid ;
struct TYPE_4__ {scalar_t__ length; int * data; } ;
typedef TYPE_1__ heim_octet_string ;
typedef int AlgorithmIdentifier ;


 int hx509_certs_add (int ,int ,int ) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_cms_create_signed (int ,int,int const*,void const*,size_t,int const*,int ,int ,int ,int ,TYPE_1__*) ;

int
hx509_cms_create_signed_1(hx509_context context,
     int flags,
     const heim_oid *eContentType,
     const void *data, size_t length,
     const AlgorithmIdentifier *digest_alg,
     hx509_cert cert,
     hx509_peer_info peer,
     hx509_certs anchors,
     hx509_certs pool,
     heim_octet_string *signed_data)
{
    hx509_certs certs;
    int ret = 0;

    signed_data->data = ((void*)0);
    signed_data->length = 0;

    ret = hx509_certs_init(context, "MEMORY:certs", 0, ((void*)0), &certs);
    if (ret)
 return ret;
    ret = hx509_certs_add(context, certs, cert);
    if (ret)
 goto out;

    ret = hx509_cms_create_signed(context, flags, eContentType, data, length,
      digest_alg, certs, peer, anchors, pool,
      signed_data);

 out:
    hx509_certs_free(&certs);
    return ret;
}

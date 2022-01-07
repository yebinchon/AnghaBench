
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; } ;
struct private_key {int private_key; TYPE_1__ localKeyId; } ;
struct TYPE_6__ {TYPE_1__* local_key_id; int match; } ;
typedef TYPE_2__ hx509_query ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;


 int HX509_LOCAL_ATTRIBUTE_MISSING ;
 int HX509_QUERY_MATCH_LOCAL_KEY_ID ;
 int _hx509_cert_assign_key (int ,int ) ;
 int _hx509_query_clear (TYPE_2__*) ;
 int hx509_cert_free (int ) ;
 int hx509_certs_find (int ,int ,TYPE_2__*,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

__attribute__((used)) static int
match_localkeyid(hx509_context context,
   struct private_key *value,
   hx509_certs certs)
{
    hx509_cert cert;
    hx509_query q;
    int ret;

    if (value->localKeyId.length == 0) {
 hx509_set_error_string(context, 0, HX509_LOCAL_ATTRIBUTE_MISSING,
          "No local key attribute on private key");
 return HX509_LOCAL_ATTRIBUTE_MISSING;
    }

    _hx509_query_clear(&q);
    q.match |= HX509_QUERY_MATCH_LOCAL_KEY_ID;

    q.local_key_id = &value->localKeyId;

    ret = hx509_certs_find(context, certs, &q, &cert);
    if (ret == 0) {

 if (value->private_key)
     _hx509_cert_assign_key(cert, value->private_key);
 hx509_cert_free(cert);
    }
    return ret;
}

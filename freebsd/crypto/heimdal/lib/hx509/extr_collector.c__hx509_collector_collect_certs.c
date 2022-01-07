
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; int * data; } ;
struct hx509_collector {TYPE_1__ val; int certs; } ;
typedef int hx509_context ;
typedef int * hx509_certs ;


 int hx509_certs_free (int **) ;
 int hx509_certs_init (int ,char*,int ,int *,int **) ;
 int hx509_certs_merge (int ,int *,int ) ;
 int match_keys (int ,int ,int *) ;
 int match_localkeyid (int ,int ,int *) ;

int
_hx509_collector_collect_certs(hx509_context context,
          struct hx509_collector *c,
          hx509_certs *ret_certs)
{
    hx509_certs certs;
    int ret;
    size_t i;

    *ret_certs = ((void*)0);

    ret = hx509_certs_init(context, "MEMORY:collector-store", 0, ((void*)0), &certs);
    if (ret)
 return ret;

    ret = hx509_certs_merge(context, certs, c->certs);
    if (ret) {
 hx509_certs_free(&certs);
 return ret;
    }

    for (i = 0; i < c->val.len; i++) {
 ret = match_localkeyid(context, c->val.data[i], certs);
 if (ret == 0)
     continue;
 ret = match_keys(context, c->val.data[i], certs);
 if (ret == 0)
     continue;
    }

    *ret_certs = certs;

    return 0;
}

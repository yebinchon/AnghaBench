
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int * data; } ;
struct hx509_collector {int unenvelop_certs; int certs; TYPE_1__ val; int lock; } ;
typedef int hx509_lock ;
typedef int hx509_context ;


 int ENOMEM ;
 struct hx509_collector* calloc (int,int) ;
 int free (struct hx509_collector*) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_collector_alloc(hx509_context context, hx509_lock lock, struct hx509_collector **collector)
{
    struct hx509_collector *c;
    int ret;

    *collector = ((void*)0);

    c = calloc(1, sizeof(*c));
    if (c == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }
    c->lock = lock;

    ret = hx509_certs_init(context, "MEMORY:collector-unenvelop-cert",
      0,((void*)0), &c->unenvelop_certs);
    if (ret) {
 free(c);
 return ret;
    }
    c->val.data = ((void*)0);
    c->val.len = 0;
    ret = hx509_certs_init(context, "MEMORY:collector-tmp-store",
      0, ((void*)0), &c->certs);
    if (ret) {
 hx509_certs_free(&c->unenvelop_certs);
 free(c);
 return ret;
    }

    *collector = c;
    return 0;
}

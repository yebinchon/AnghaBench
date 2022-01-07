
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* hx509_lock ;
typedef int hx509_context ;
struct TYPE_5__ {int certs; } ;


 int ENOMEM ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;

int
hx509_lock_init(hx509_context context, hx509_lock *lock)
{
    hx509_lock l;
    int ret;

    *lock = ((void*)0);

    l = calloc(1, sizeof(*l));
    if (l == ((void*)0))
 return ENOMEM;

    ret = hx509_certs_init(context,
      "MEMORY:locks-internal",
      0,
      ((void*)0),
      &l->certs);
    if (ret) {
 free(l);
 return ret;
    }

    *lock = l;

    return 0;
}

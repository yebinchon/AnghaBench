
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t len; TYPE_1__** data; } ;
struct hx509_collector {TYPE_2__ val; } ;
typedef int * hx509_private_key ;
typedef int hx509_context ;
struct TYPE_3__ {int * private_key; } ;


 int ENOMEM ;
 int ** calloc (size_t,int) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
_hx509_collector_collect_private_keys(hx509_context context,
          struct hx509_collector *c,
          hx509_private_key **keys)
{
    size_t i, nkeys;

    *keys = ((void*)0);

    for (i = 0, nkeys = 0; i < c->val.len; i++)
 if (c->val.data[i]->private_key)
     nkeys++;

    *keys = calloc(nkeys + 1, sizeof(**keys));
    if (*keys == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "malloc - out of memory");
 return ENOMEM;
    }

    for (i = 0, nkeys = 0; i < c->val.len; i++) {
  if (c->val.data[i]->private_key) {
     (*keys)[nkeys++] = c->val.data[i]->private_key;
     c->val.data[i]->private_key = ((void*)0);
 }
    }
    (*keys)[nkeys] = ((void*)0);

    return 0;
}

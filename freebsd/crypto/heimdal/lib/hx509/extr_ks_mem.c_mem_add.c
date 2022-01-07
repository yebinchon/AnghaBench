
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int * val; } ;
struct mem_data {TYPE_1__ certs; } ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int hx509_cert ;


 int ENOMEM ;
 int hx509_cert_ref (int ) ;
 int * realloc (int *,int) ;

__attribute__((used)) static int
mem_add(hx509_context context, hx509_certs certs, void *data, hx509_cert c)
{
    struct mem_data *mem = data;
    hx509_cert *val;

    val = realloc(mem->certs.val,
    (mem->certs.len + 1) * sizeof(mem->certs.val[0]));
    if (val == ((void*)0))
 return ENOMEM;

    mem->certs.val = val;
    mem->certs.val[mem->certs.len] = hx509_cert_ref(c);
    mem->certs.len++;

    return 0;
}

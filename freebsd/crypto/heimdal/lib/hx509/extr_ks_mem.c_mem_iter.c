
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long len; int * val; } ;
struct mem_data {TYPE_1__ certs; } ;
typedef int hx509_context ;
typedef int hx509_certs ;
typedef int * hx509_cert ;


 int * hx509_cert_ref (int ) ;

__attribute__((used)) static int
mem_iter(hx509_context contexst,
  hx509_certs certs,
  void *data,
  void *cursor,
  hx509_cert *cert)
{
    unsigned long *iter = cursor;
    struct mem_data *mem = data;

    if (*iter >= mem->certs.len) {
 *cert = ((void*)0);
 return 0;
    }

    *cert = hx509_cert_ref(mem->certs.val[*iter]);
    (*iter)++;
    return 0;
}

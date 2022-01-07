
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* hx509_certs ;
struct TYPE_7__ {scalar_t__ ref; int ops_data; TYPE_1__* ops; } ;
struct TYPE_6__ {int (* free ) (TYPE_2__*,int ) ;} ;


 int _hx509_abort (char*) ;
 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*,int ) ;

void
hx509_certs_free(hx509_certs *certs)
{
    if (*certs) {
 if ((*certs)->ref == 0)
     _hx509_abort("cert refcount == 0 on free");
 if (--(*certs)->ref > 0)
     return;

 (*(*certs)->ops->free)(*certs, (*certs)->ops_data);
 free(*certs);
 *certs = ((void*)0);
    }
}

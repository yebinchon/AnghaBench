
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_2__* hx509_cert ;
struct TYPE_8__ {int * val; scalar_t__ len; } ;
struct TYPE_9__ {int ref; struct TYPE_9__* data; int * ctx; int * release; int * basename; int * private_key; TYPE_1__ attrs; int * friendlyname; } ;
typedef int Certificate ;


 int ENOMEM ;
 TYPE_2__* calloc (int,int) ;
 int copy_Certificate (int const*,TYPE_2__*) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;

int
hx509_cert_init(hx509_context context, const Certificate *c, hx509_cert *cert)
{
    int ret;

    *cert = malloc(sizeof(**cert));
    if (*cert == ((void*)0))
 return ENOMEM;
    (*cert)->ref = 1;
    (*cert)->friendlyname = ((void*)0);
    (*cert)->attrs.len = 0;
    (*cert)->attrs.val = ((void*)0);
    (*cert)->private_key = ((void*)0);
    (*cert)->basename = ((void*)0);
    (*cert)->release = ((void*)0);
    (*cert)->ctx = ((void*)0);

    (*cert)->data = calloc(1, sizeof(*(*cert)->data));
    if ((*cert)->data == ((void*)0)) {
 free(*cert);
 return ENOMEM;
    }
    ret = copy_Certificate(c, (*cert)->data);
    if (ret) {
 free((*cert)->data);
 free(*cert);
 *cert = ((void*)0);
    }
    return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_request ;
typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_4__ {int len; int * val; } ;
struct TYPE_5__ {TYPE_1__ eku; } ;


 int ENOMEM ;
 int der_copy_oid (int const*,int *) ;
 void* realloc (int *,int) ;

int
_hx509_request_add_eku(hx509_context context,
         hx509_request req,
         const heim_oid *oid)
{
    void *val;
    int ret;

    val = realloc(req->eku.val, sizeof(req->eku.val[0]) * (req->eku.len + 1));
    if (val == ((void*)0))
 return ENOMEM;
    req->eku.val = val;

    ret = der_copy_oid(oid, &req->eku.val[req->eku.len]);
    if (ret)
 return ret;

    req->eku.len += 1;

    return 0;
}

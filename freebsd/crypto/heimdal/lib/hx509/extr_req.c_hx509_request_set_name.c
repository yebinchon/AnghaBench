
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_request ;
typedef scalar_t__ hx509_name ;
typedef int hx509_context ;
struct TYPE_3__ {scalar_t__ name; } ;


 int hx509_name_copy (int ,scalar_t__,scalar_t__*) ;
 int hx509_name_free (scalar_t__*) ;

int
hx509_request_set_name(hx509_context context,
   hx509_request req,
   hx509_name name)
{
    if (req->name)
 hx509_name_free(&req->name);
    if (name) {
 int ret = hx509_name_copy(context, name, &req->name);
 if (ret)
     return ret;
    }
    return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_request ;
typedef int hx509_name ;
typedef int hx509_context ;
struct TYPE_3__ {int * name; } ;


 int EINVAL ;
 int hx509_name_copy (int ,int *,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_request_get_name(hx509_context context,
   hx509_request req,
   hx509_name *name)
{
    if (req->name == ((void*)0)) {
 hx509_set_error_string(context, 0, EINVAL, "Request have no name");
 return EINVAL;
    }
    return hx509_name_copy(context, req->name, name);
}

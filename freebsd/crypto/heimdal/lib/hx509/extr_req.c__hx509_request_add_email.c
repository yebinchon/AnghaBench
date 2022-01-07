
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int name ;
typedef TYPE_3__* hx509_request ;
typedef int hx509_context ;
struct TYPE_8__ {int length; int data; } ;
struct TYPE_9__ {TYPE_1__ dNSName; } ;
struct TYPE_11__ {TYPE_2__ u; int element; } ;
struct TYPE_10__ {int san; } ;
typedef TYPE_4__ GeneralName ;


 int add_GeneralNames (int *,TYPE_4__*) ;
 int choice_GeneralName_rfc822Name ;
 int memset (TYPE_4__*,int ,int) ;
 int rk_UNCONST (char const*) ;
 int strlen (char const*) ;

int
_hx509_request_add_email(hx509_context context,
    hx509_request req,
    const char *email)
{
    GeneralName name;

    memset(&name, 0, sizeof(name));
    name.element = choice_GeneralName_rfc822Name;
    name.u.dNSName.data = rk_UNCONST(email);
    name.u.dNSName.length = strlen(email);

    return add_GeneralNames(&req->san, &name);
}

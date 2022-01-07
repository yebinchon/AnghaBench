
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hx509_context ;
typedef TYPE_3__* hx509_ca_tbs ;
typedef int gn ;
struct TYPE_8__ {int length; int data; } ;
struct TYPE_9__ {TYPE_1__ rfc822Name; } ;
struct TYPE_11__ {TYPE_2__ u; int element; } ;
struct TYPE_10__ {int san; } ;
typedef TYPE_4__ GeneralName ;


 int add_GeneralNames (int *,TYPE_4__*) ;
 int choice_GeneralName_rfc822Name ;
 int memset (TYPE_4__*,int ,int) ;
 int rk_UNCONST (char const*) ;
 int strlen (char const*) ;

int
hx509_ca_tbs_add_san_rfc822name(hx509_context context,
    hx509_ca_tbs tbs,
    const char *rfc822Name)
{
    GeneralName gn;

    memset(&gn, 0, sizeof(gn));
    gn.element = choice_GeneralName_rfc822Name;
    gn.u.rfc822Name.data = rk_UNCONST(rfc822Name);
    gn.u.rfc822Name.length = strlen(rfc822Name);

    return add_GeneralNames(&tbs->san, &gn);
}

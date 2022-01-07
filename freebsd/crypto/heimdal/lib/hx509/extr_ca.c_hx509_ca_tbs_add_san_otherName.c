
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
typedef int heim_oid ;
typedef int heim_octet_string ;
typedef int gn ;
struct TYPE_8__ {int value; int type_id; } ;
struct TYPE_9__ {TYPE_1__ otherName; } ;
struct TYPE_11__ {TYPE_2__ u; int element; } ;
struct TYPE_10__ {int san; } ;
typedef TYPE_4__ GeneralName ;


 int add_GeneralNames (int *,TYPE_4__*) ;
 int choice_GeneralName_otherName ;
 int memset (TYPE_4__*,int ,int) ;

int
hx509_ca_tbs_add_san_otherName(hx509_context context,
          hx509_ca_tbs tbs,
          const heim_oid *oid,
          const heim_octet_string *os)
{
    GeneralName gn;

    memset(&gn, 0, sizeof(gn));
    gn.element = choice_GeneralName_otherName;
    gn.u.otherName.type_id = *oid;
    gn.u.otherName.value = *os;

    return add_GeneralNames(&tbs->san, &gn);
}

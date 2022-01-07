
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_7__ {int * subs; int len; } ;
struct snmp_value {TYPE_3__ var; } ;
struct TYPE_6__ {int ifp; TYPE_1__* mib; } ;
struct atmif_priv {TYPE_2__ pub; int index; } ;
typedef enum snmp_op { ____Placeholder_snmp_op } snmp_op ;
struct TYPE_5__ {scalar_t__ pcr; } ;


 struct atmif_priv* FIND_OBJECT_INT (int *,TYPE_3__*,size_t) ;
 struct atmif_priv* NEXT_OBJECT_INT (int *,TYPE_3__*,size_t) ;
 int SNMP_ERR_NOERROR ;
 int SNMP_ERR_NOSUCHNAME ;
 int SNMP_ERR_NO_CREATION ;





 int abort () ;
 int atmif_check_carrier (struct atmif_priv*) ;
 int atmif_list ;
 int atmif_sys_fill_mib (struct atmif_priv*) ;
 int mib_fetch_ifmib (int ) ;

int
atmif_get_aif(struct snmp_value *value, u_int sub, enum snmp_op op,
    struct atmif_priv **aifp)
{
 switch (op) {

   case 130:
  if ((*aifp = NEXT_OBJECT_INT(&atmif_list,
      &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  value->var.len = sub + 1;
  value->var.subs[sub] = (*aifp)->index;
  break;

   case 131:
  if ((*aifp = FIND_OBJECT_INT(&atmif_list,
      &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NOSUCHNAME);
  break;

   case 128:
  if ((*aifp = FIND_OBJECT_INT(&atmif_list,
      &value->var, sub)) == ((void*)0))
   return (SNMP_ERR_NO_CREATION);
  break;

   case 129:
   case 132:
  if ((*aifp = FIND_OBJECT_INT(&atmif_list,
      &value->var, sub)) == ((void*)0))
   abort();
  return (SNMP_ERR_NOERROR);
 }

 if ((*aifp)->pub.mib->pcr == 0) {
  mib_fetch_ifmib((*aifp)->pub.ifp);
  atmif_sys_fill_mib(*aifp);
  atmif_check_carrier(*aifp);
 }

 return (SNMP_ERR_NOERROR);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct local_rrset {TYPE_2__* rrset; struct local_rrset* next; } ;
struct local_data {struct local_rrset* rrsets; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ htons (scalar_t__) ;

__attribute__((used)) static struct local_rrset*
local_data_find_type(struct local_data* data, uint16_t type, int alias_ok)
{
 struct local_rrset* p;
 type = htons(type);
 for(p = data->rrsets; p; p = p->next) {
  if(p->rrset->rk.type == type)
   return p;
  if(alias_ok && p->rrset->rk.type == htons(LDNS_RR_TYPE_CNAME))
   return p;
 }
 return ((void*)0);
}

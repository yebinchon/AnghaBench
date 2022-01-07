
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct local_rrset {struct local_rrset* next; TYPE_2__* rrset; } ;
struct local_data {struct local_rrset* rrsets; } ;
struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ rk; } ;


 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
del_local_rrset(struct local_data* d, uint16_t dtype)
{
 struct local_rrset* prev=((void*)0), *p=d->rrsets;
 while(p && ntohs(p->rrset->rk.type) != dtype) {
  prev = p;
  p = p->next;
 }
 if(!p)
  return;

 if(prev) prev->next = p->next;
 else d->rrsets = p->next;

}

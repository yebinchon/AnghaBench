
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct ub_packed_rrset_key* data; } ;
struct TYPE_3__ {struct ub_packed_rrset_key* dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;


 int free (struct ub_packed_rrset_key*) ;

__attribute__((used)) static void
autr_rrset_delete(struct ub_packed_rrset_key* r)
{
 if(r) {
  free(r->rk.dname);
  free(r->entry.data);
  free(r);
 }
}

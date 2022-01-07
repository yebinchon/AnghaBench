
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int dname_len; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;
struct packed_rrset_data {int dummy; } ;


 scalar_t__ lock_get_mem (int *) ;
 scalar_t__ packed_rrset_sizeof (struct packed_rrset_data*) ;

size_t
ub_rrset_sizefunc(void* key, void* data)
{
 struct ub_packed_rrset_key* k = (struct ub_packed_rrset_key*)key;
 struct packed_rrset_data* d = (struct packed_rrset_data*)data;
 size_t s = sizeof(struct ub_packed_rrset_key) + k->rk.dname_len;
 s += packed_rrset_sizeof(d) + lock_get_mem(&k->entry.lock);
 return s;
}

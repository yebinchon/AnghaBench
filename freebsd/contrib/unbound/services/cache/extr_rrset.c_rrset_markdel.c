
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {scalar_t__ id; } ;



void
rrset_markdel(void* key)
{
 struct ub_packed_rrset_key* r = (struct ub_packed_rrset_key*)key;
 r->id = 0;
}

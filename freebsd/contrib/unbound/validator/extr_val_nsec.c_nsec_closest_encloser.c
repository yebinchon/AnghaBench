
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;


 scalar_t__ dname_count_labels (int *) ;
 int * dname_get_shared_topdomain (int *,int *) ;
 int nsec_get_next (struct ub_packed_rrset_key*,int **,size_t*) ;

uint8_t*
nsec_closest_encloser(uint8_t* qname, struct ub_packed_rrset_key* nsec)
{
 uint8_t* next;
 size_t nlen;
 uint8_t* common1, *common2;
 if(!nsec_get_next(nsec, &next, &nlen))
  return ((void*)0);

 common1 = dname_get_shared_topdomain(nsec->rk.dname, qname);
 common2 = dname_get_shared_topdomain(next, qname);
 if(dname_count_labels(common1) > dname_count_labels(common2))
  return common1;
 return common2;
}

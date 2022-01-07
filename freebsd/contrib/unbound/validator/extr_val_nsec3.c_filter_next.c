
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {size_t dname_len; int * dname; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct nsec3_filter {size_t num; scalar_t__ fclass; struct ub_packed_rrset_key** list; int zone; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int dname_remove_label (int **,size_t*) ;
 int nsec3_known_algo (struct ub_packed_rrset_key*,int) ;
 scalar_t__ nsec3_unknown_flags (struct ub_packed_rrset_key*,int) ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;
 scalar_t__ rrset_get_count (struct ub_packed_rrset_key*) ;

__attribute__((used)) static struct ub_packed_rrset_key*
filter_next(struct nsec3_filter* filter, size_t* rrsetnum, int* rrnum)
{
 size_t i;
 int r;
 uint8_t* nm;
 size_t nmlen;
 if(!filter->zone)
  return ((void*)0);
 for(i=*rrsetnum; i<filter->num; i++) {

  if(ntohs(filter->list[i]->rk.type) != LDNS_RR_TYPE_NSEC3 ||
   ntohs(filter->list[i]->rk.rrset_class) !=
   filter->fclass)
   continue;

  nm = filter->list[i]->rk.dname;
  nmlen = filter->list[i]->rk.dname_len;
  dname_remove_label(&nm, &nmlen);
  if(query_dname_compare(nm, filter->zone) != 0)
   continue;
  if(i == *rrsetnum)
   r = (*rrnum) + 1;
  else r = 0;
  for(; r < (int)rrset_get_count(filter->list[i]); r++) {

   if(nsec3_unknown_flags(filter->list[i], r) ||
    !nsec3_known_algo(filter->list[i], r))
    continue;

   *rrsetnum = i;
   *rrnum = r;
   return filter->list[i];
  }
 }
 return ((void*)0);
}

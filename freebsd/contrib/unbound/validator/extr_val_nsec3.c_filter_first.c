
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_packed_rrset_key {int dummy; } ;
struct nsec3_filter {int dummy; } ;


 struct ub_packed_rrset_key* filter_next (struct nsec3_filter*,size_t*,int*) ;

__attribute__((used)) static struct ub_packed_rrset_key*
filter_first(struct nsec3_filter* filter, size_t* rrsetnum, int* rrnum)
{
 *rrsetnum = 0;
 *rrnum = -1;
 return filter_next(filter, rrsetnum, rrnum);
}

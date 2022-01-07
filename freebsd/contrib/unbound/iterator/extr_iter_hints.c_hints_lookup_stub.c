
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct iter_hints_stub {TYPE_1__* dp; scalar_t__ noprime; } ;
struct iter_hints {int tree; } ;
struct delegpt {int namelabs; int name; } ;
struct TYPE_2__ {int namelabs; int name; } ;


 int dname_count_size_labels (int *,size_t*) ;
 scalar_t__ dname_strict_subdomain (int ,int,int ,int ) ;
 scalar_t__ name_tree_lookup (int *,int *,size_t,int,int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;

struct iter_hints_stub*
hints_lookup_stub(struct iter_hints* hints, uint8_t* qname,
 uint16_t qclass, struct delegpt* cache_dp)
{
 size_t len;
 int labs;
 struct iter_hints_stub *r;


 labs = dname_count_size_labels(qname, &len);
 r = (struct iter_hints_stub*)name_tree_lookup(&hints->tree, qname,
  len, labs, qclass);
 if(!r) return ((void*)0);


 if(cache_dp == ((void*)0)) {
  if(r->dp->namelabs != 1)
   return r;
  return ((void*)0);
 }





 if(r->noprime && query_dname_compare(cache_dp->name, r->dp->name)==0)
  return r;




 if(dname_strict_subdomain(r->dp->name, r->dp->namelabs,
  cache_dp->name, cache_dp->namelabs))
  return r;
 return ((void*)0);
}

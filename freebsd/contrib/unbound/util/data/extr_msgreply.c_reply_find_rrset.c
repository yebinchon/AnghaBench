
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {size_t dname_len; int dname; int rrset_class; int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t rrset_count; struct ub_packed_rrset_key** rrsets; } ;


 scalar_t__ ntohs (int ) ;
 scalar_t__ query_dname_compare (int *,int ) ;

struct ub_packed_rrset_key* reply_find_rrset(struct reply_info* rep,
 uint8_t* name, size_t namelen, uint16_t type, uint16_t dclass)
{
 size_t i;
 for(i=0; i<rep->rrset_count; i++) {
  struct ub_packed_rrset_key* s = rep->rrsets[i];
  if(ntohs(s->rk.type) == type &&
   ntohs(s->rk.rrset_class) == dclass &&
   namelen == s->rk.dname_len &&
   query_dname_compare(name, s->rk.dname) == 0) {
   return s;
  }
 }
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_ref {int dummy; } ;
struct reply_info {int rrset_count; int * ref; struct ub_packed_rrset_key** rrsets; } ;
struct regional {int dummy; } ;
struct query_info {int qname_len; int * qname; } ;
struct lruhash_entry {int * key; int * data; } ;


 int RR_COUNT_MAX ;
 int * regional_alloc_init (struct regional*,int *,int) ;

__attribute__((used)) static int
copy_msg(struct regional* region, struct lruhash_entry* e,
 struct query_info** k, struct reply_info** d)
{
 struct reply_info* rep = (struct reply_info*)e->data;
 if(rep->rrset_count > RR_COUNT_MAX)
  return 0;
 *d = (struct reply_info*)regional_alloc_init(region, e->data,
  sizeof(struct reply_info) +
  sizeof(struct rrset_ref) * (rep->rrset_count-1) +
  sizeof(struct ub_packed_rrset_key*) * rep->rrset_count);
 if(!*d)
  return 0;
 (*d)->rrsets = (struct ub_packed_rrset_key**)(void *)(
  (uint8_t*)(&((*d)->ref[0])) +
  sizeof(struct rrset_ref) * rep->rrset_count);
 *k = (struct query_info*)regional_alloc_init(region,
  e->key, sizeof(struct query_info));
 if(!*k)
  return 0;
 (*k)->qname = regional_alloc_init(region,
  (*k)->qname, (*k)->qname_len);
 return (*k)->qname != ((void*)0);
}

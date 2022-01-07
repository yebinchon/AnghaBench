
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint16_t ;
typedef scalar_t__ time_t ;
struct reply_info {scalar_t__ ttl; } ;
struct query_info {size_t qname_len; int * local_alias; void* qclass; void* qtype; int * qname; } ;
struct msgreply_entry {int dummy; } ;
struct module_env {int msg_cache; } ;
struct lruhash_entry {scalar_t__ key; int lock; scalar_t__ data; } ;
typedef int hashvalue_type ;


 int lock_rw_unlock (int *) ;
 int query_info_hash (struct query_info*,void*) ;
 struct lruhash_entry* slabhash_lookup (int ,int ,struct query_info*,int) ;

struct msgreply_entry*
msg_cache_lookup(struct module_env* env, uint8_t* qname, size_t qnamelen,
 uint16_t qtype, uint16_t qclass, uint16_t flags, time_t now, int wr)
{
 struct lruhash_entry* e;
 struct query_info k;
 hashvalue_type h;

 k.qname = qname;
 k.qname_len = qnamelen;
 k.qtype = qtype;
 k.qclass = qclass;
 k.local_alias = ((void*)0);
 h = query_info_hash(&k, flags);
 e = slabhash_lookup(env->msg_cache, h, &k, wr);

 if(!e) return ((void*)0);
 if( now > ((struct reply_info*)e->data)->ttl ) {
  lock_rw_unlock(&e->lock);
  return ((void*)0);
 }
 return (struct msgreply_entry*)e->key;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint16_t ;
struct query_info {size_t qname_len; int * local_alias; void* qclass; void* qtype; int * qname; } ;
struct module_env {int msg_cache; } ;
typedef int hashvalue_type ;


 int query_info_hash (struct query_info*,void*) ;
 int slabhash_remove (int ,int ,struct query_info*) ;

void
msg_cache_remove(struct module_env* env, uint8_t* qname, size_t qnamelen,
 uint16_t qtype, uint16_t qclass, uint16_t flags)
{
 struct query_info k;
 hashvalue_type h;

 k.qname = qname;
 k.qname_len = qnamelen;
 k.qtype = qtype;
 k.qclass = qclass;
 k.local_alias = ((void*)0);
 h = query_info_hash(&k, flags);
 slabhash_remove(env->msg_cache, h, &k);
}

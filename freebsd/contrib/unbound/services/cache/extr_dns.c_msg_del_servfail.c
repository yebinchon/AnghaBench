
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct reply_info {int flags; } ;
struct query_info {int qclass; int qtype; int qname_len; int qname; } ;
struct TYPE_2__ {int lock; scalar_t__ data; } ;
struct msgreply_entry {TYPE_1__ entry; } ;
struct module_env {int dummy; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_SERVFAIL ;
 int lock_rw_unlock (int *) ;
 struct msgreply_entry* msg_cache_lookup (struct module_env*,int ,int ,int ,int ,int ,int ,int ) ;
 int msg_cache_remove (struct module_env*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
msg_del_servfail(struct module_env* env, struct query_info* qinfo,
 uint32_t flags)
{
 struct msgreply_entry* e;



 e = msg_cache_lookup(env, qinfo->qname, qinfo->qname_len,
  qinfo->qtype, qinfo->qclass, flags, 0, 0);
 if(!e) return;



 if(FLAGS_GET_RCODE(((struct reply_info*)e->entry.data)->flags)
  != LDNS_RCODE_SERVFAIL) {
  lock_rw_unlock(&e->entry.lock);
  return;
 }
 lock_rw_unlock(&e->entry.lock);
 msg_cache_remove(env, qinfo->qname, qinfo->qname_len, qinfo->qtype,
  qinfo->qclass, flags);
}

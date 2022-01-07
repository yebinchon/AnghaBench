
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct reply_info {int prefetch_ttl; } ;
struct query_info {int qclass; int qtype; int qname_len; int qname; } ;
struct TYPE_2__ {int lock; scalar_t__ data; } ;
struct msgreply_entry {TYPE_1__ entry; } ;
struct module_env {int * now; } ;


 int lock_rw_unlock (int *) ;
 struct msgreply_entry* msg_cache_lookup (struct module_env*,int ,int ,int ,int ,int ,int ,int) ;

int
dns_cache_prefetch_adjust(struct module_env* env, struct query_info* qinfo,
        time_t adjust, uint16_t flags)
{
 struct msgreply_entry* msg;
 msg = msg_cache_lookup(env, qinfo->qname, qinfo->qname_len,
  qinfo->qtype, qinfo->qclass, flags, *env->now, 1);
 if(msg) {
  struct reply_info* rep = (struct reply_info*)msg->entry.data;
  if(rep) {
   rep->prefetch_ttl += adjust;
   lock_rw_unlock(&msg->entry.lock);
   return 1;
  }
  lock_rw_unlock(&msg->entry.lock);
 }
 return 0;
}

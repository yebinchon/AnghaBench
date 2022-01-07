
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trust_anchor {scalar_t__ numDS; scalar_t__ numDNSKEY; int lock; } ;
struct query_info {int qclass; int qname_len; int qname; } ;
struct module_env {int anchors; } ;


 struct trust_anchor* anchors_lookup (int ,int ,int ,int ) ;
 int lock_basic_unlock (int *) ;

int
iter_qname_indicates_dnssec(struct module_env* env, struct query_info *qinfo)
{
 struct trust_anchor* a;
 if(!env || !env->anchors || !qinfo || !qinfo->qname)
  return 0;

 if((a=anchors_lookup(env->anchors, qinfo->qname, qinfo->qname_len,
  qinfo->qclass))) {
  if(a->numDS == 0 && a->numDNSKEY == 0) {

   lock_basic_unlock(&a->lock);
   return 0;
  }
  lock_basic_unlock(&a->lock);
  return 1;
 }

 return 0;
}

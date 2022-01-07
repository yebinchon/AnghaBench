
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct name_tree_node {int dummy; } ;
struct TYPE_4__ {int qclass; int qname_len; int qname; } ;
struct module_qstate {TYPE_2__ qinfo; TYPE_1__* env; } ;
struct dns64_env {int ignore_aaaa; } ;
struct TYPE_3__ {scalar_t__* modinfo; } ;


 int dname_count_labels (int ) ;
 struct name_tree_node* name_tree_lookup (int *,int ,int ,int,int ) ;

__attribute__((used)) static int
dns64_always_synth_for_qname(struct module_qstate* qstate, int id)
{
 struct dns64_env* dns64_env = (struct dns64_env*)qstate->env->modinfo[id];
 int labs = dname_count_labels(qstate->qinfo.qname);
 struct name_tree_node* node = name_tree_lookup(&dns64_env->ignore_aaaa,
  qstate->qinfo.qname, qstate->qinfo.qname_len, labs,
  qstate->qinfo.qclass);
 return (node != ((void*)0));
}

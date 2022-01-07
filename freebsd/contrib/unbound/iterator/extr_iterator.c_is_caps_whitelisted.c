
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int qclass; int qname; int qname_len; } ;
struct iter_qstate {TYPE_1__ qchase; } ;
struct iter_env {int caps_white; } ;


 int dname_count_labels (int ) ;
 int * name_tree_lookup (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
is_caps_whitelisted(struct iter_env* ie, struct iter_qstate* iq)
{
 if(!ie->caps_white) return 0;
 return name_tree_lookup(ie->caps_white, iq->qchase.qname,
  iq->qchase.qname_len, dname_count_labels(iq->qchase.qname),
  iq->qchase.qclass) != ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_op; scalar_t__* port; } ;
struct pf_rule {TYPE_1__ dst; } ;


 scalar_t__ PF_OP_NONE ;

int
skip_cmp_dst_port(struct pf_rule *a, struct pf_rule *b)
{





 if (a->dst.port_op == PF_OP_NONE || a->dst.port_op != b->dst.port_op ||
     a->dst.port[0] != b->dst.port[0] ||
     a->dst.port[1] != b->dst.port[1])
  return (1);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port_op; scalar_t__* port; } ;
struct pf_rule {TYPE_1__ src; } ;


 scalar_t__ PF_OP_NONE ;

int
skip_cmp_src_port(struct pf_rule *a, struct pf_rule *b)
{
 if (a->src.port_op == PF_OP_NONE || a->src.port_op != b->src.port_op ||
     a->src.port[0] != b->src.port[0] ||
     a->src.port[1] != b->src.port[1])
  return (1);





 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* node; } ;
typedef TYPE_4__ sorted_pattern_t ;
struct TYPE_8__ {int data; } ;
struct TYPE_10__ {TYPE_3__ pattern; } ;
typedef TYPE_5__ authz_rule_segment_t ;
struct TYPE_6__ {int data; } ;
struct TYPE_7__ {TYPE_1__ segment; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
compare_node_rule_segment(const void *void_lhs,
                          const void *void_rhs)
{
  const sorted_pattern_t *element = void_lhs;
  const authz_rule_segment_t *segment = void_rhs;

  return strcmp(element->node->segment.data, segment->pattern.data);
}

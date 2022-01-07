
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* node; } ;
typedef TYPE_3__ sorted_pattern_t ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ segment; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static int
compare_node_path_segment(const void *void_lhs,
                          const void *void_rhs)
{
  const sorted_pattern_t *element = void_lhs;
  const char *segment = void_rhs;

  return strcmp(element->node->segment.data, segment);
}

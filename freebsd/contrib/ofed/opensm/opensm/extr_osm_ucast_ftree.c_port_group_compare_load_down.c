
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int p_sw; } ;
struct TYPE_8__ {int counter_down; TYPE_1__ remote_hca_or_sw; } ;
typedef TYPE_2__ ftree_port_group_t ;


 int compare_port_groups_by_remote_switch_index (TYPE_2__ const**,TYPE_2__ const**) ;
 int find_lowest_loaded_group_on_sw (int ) ;

__attribute__((used)) static inline int port_group_compare_load_down(const ftree_port_group_t * p1,
            const ftree_port_group_t * p2)
{
 int temp = p1->counter_down - p2->counter_down;
 if (temp > 0)
  return 1;
 if (temp < 0)
  return -1;


 do {
  uint32_t load1 =
      find_lowest_loaded_group_on_sw(p1->remote_hca_or_sw.p_sw);
  uint32_t load2 =
      find_lowest_loaded_group_on_sw(p2->remote_hca_or_sw.p_sw);
  temp = load1 - load2;
  if (temp > 0)
   return 1;
 } while (0);

 return compare_port_groups_by_remote_switch_index(&p1, &p2);
}

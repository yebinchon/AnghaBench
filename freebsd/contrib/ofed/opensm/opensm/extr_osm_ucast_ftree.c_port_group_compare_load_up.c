
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int counter_up; } ;
typedef TYPE_1__ ftree_port_group_t ;


 int compare_port_groups_by_remote_switch_index (TYPE_1__ const**,TYPE_1__ const**) ;

__attribute__((used)) static inline int port_group_compare_load_up(const ftree_port_group_t * p1,
                                             const ftree_port_group_t * p2)
{
        int temp = p1->counter_up - p2->counter_up;
        if (temp > 0)
                return 1;
        if (temp < 0)
                return -1;


        return compare_port_groups_by_remote_switch_index (&p1,&p2);
}

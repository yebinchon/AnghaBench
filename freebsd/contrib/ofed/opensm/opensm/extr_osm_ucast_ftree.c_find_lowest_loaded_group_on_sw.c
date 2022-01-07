
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int min_counter_down; } ;
typedef TYPE_1__ ftree_sw_t ;



__attribute__((used)) static inline uint32_t find_lowest_loaded_group_on_sw(ftree_sw_t * p_sw)
{
 return p_sw->min_counter_down;
}

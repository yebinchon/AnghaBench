
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; } ;
struct respip_set {TYPE_1__ ip_tree; } ;



int
respip_set_is_empty(const struct respip_set* set)
{
 return set ? set->ip_tree.count == 0 : 1;
}

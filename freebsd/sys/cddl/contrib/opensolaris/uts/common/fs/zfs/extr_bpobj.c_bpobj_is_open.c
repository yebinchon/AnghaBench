
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bpo_object; } ;
typedef TYPE_1__ bpobj_t ;
typedef int boolean_t ;



boolean_t
bpobj_is_open(const bpobj_t *bpo)
{
 return (bpo->bpo_object != 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__** switches; } ;
typedef TYPE_4__ lash_t ;
struct TYPE_8__ {TYPE_2__* node; } ;
struct TYPE_7__ {TYPE_1__** links; } ;
struct TYPE_6__ {int switch_id; } ;



__attribute__((used)) static inline int get_next_switch(lash_t *p_lash, int sw, int link)
{
 return p_lash->switches[sw]->node->links[link]->switch_id;
}

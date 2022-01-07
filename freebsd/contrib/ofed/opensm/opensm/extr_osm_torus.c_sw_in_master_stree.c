
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct t_switch {TYPE_2__* ptgrp; TYPE_1__* torus; } ;
struct TYPE_4__ {scalar_t__ to_stree_root; } ;
struct TYPE_3__ {struct t_switch* master_stree_root; } ;


 int TORUS_MAX_DIM ;

__attribute__((used)) static
bool sw_in_master_stree(struct t_switch *sw)
{
 int g;
 bool connected;

 connected = sw == sw->torus->master_stree_root;
 for (g = 0; g < 2 * TORUS_MAX_DIM; g++)
  connected = connected || sw->ptgrp[g].to_stree_root;

 return connected;
}

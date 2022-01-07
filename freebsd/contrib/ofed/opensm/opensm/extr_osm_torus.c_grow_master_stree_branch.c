
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t_switch {TYPE_1__* ptgrp; } ;
struct TYPE_2__ {struct TYPE_2__* to_stree_root; struct TYPE_2__* to_stree_tip; } ;



__attribute__((used)) static
void grow_master_stree_branch(struct t_switch *root, struct t_switch *tip,
         unsigned to_root_pg, unsigned to_tip_pg)
{
 root->ptgrp[to_tip_pg].to_stree_tip = &tip->ptgrp[to_root_pg];
 tip->ptgrp[to_root_pg].to_stree_root = &root->ptgrp[to_tip_pg];
}

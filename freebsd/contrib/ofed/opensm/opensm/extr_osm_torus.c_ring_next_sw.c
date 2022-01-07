
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct t_switch {TYPE_2__* ptgrp; } ;
struct TYPE_8__ {TYPE_3__* end; } ;
struct TYPE_7__ {struct t_switch* sw; } ;
struct TYPE_6__ {TYPE_1__** port; int port_cnt; } ;
struct TYPE_5__ {TYPE_4__* link; } ;



__attribute__((used)) static
struct t_switch *ring_next_sw(struct t_switch *sw, unsigned cdir, int rdir)
{
 unsigned pt_grp, far_end = 0;

 if (!rdir)
  return ((void*)0);







 pt_grp = 2 * cdir;
 if (rdir > 0) {
  pt_grp++;
  far_end = 1;
 }

 if (!sw->ptgrp[pt_grp].port_cnt)
  return ((void*)0);

 return sw->ptgrp[pt_grp].port[0]->link->end[far_end].sw;
}

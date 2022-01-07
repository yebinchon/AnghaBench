
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct torus {int flags; scalar_t__ link_cnt; scalar_t__ switch_cnt; TYPE_2__* osm; TYPE_3__**** sw; scalar_t__ z_sz; scalar_t__ x_sz; scalar_t__ y_sz; } ;
struct fabric {scalar_t__ link_cnt; scalar_t__ switch_cnt; } ;
struct TYPE_6__ {TYPE_1__* ptgrp; } ;
struct TYPE_5__ {int log; } ;
struct TYPE_4__ {int port_cnt; } ;


 int MSG_DEADLOCK ;
 int OSM_LOG (int *,int ,char*,...) ;
 int OSM_LOG_ERROR ;
 int OSM_LOG_INFO ;
 int rpt_torus_missing (struct torus*,int,int,int,TYPE_3__*,int*) ;

__attribute__((used)) static
bool routable_torus(struct torus *t, struct fabric *f)
{
 int i, j, k, tmp = -1;
 unsigned b2g_cnt, g2b_cnt;
 bool success = 1;

 t->flags &= ~MSG_DEADLOCK;

 if (t->link_cnt != f->link_cnt || t->switch_cnt != f->switch_cnt)
  OSM_LOG(&t->osm->log, OSM_LOG_INFO,
   "Warning: Could not construct torus using all "
   "known fabric switches and/or links.\n");

 for (k = 0; k < (int)t->z_sz; k++)
  for (j = 0; j < (int)t->y_sz; j++)
   for (i = 0; i < (int)t->x_sz; i++)
    rpt_torus_missing(t, i, j, k,
        t->sw[i][j][k], &tmp);



 for (k = 0; k < (int)t->z_sz; k++)
  for (j = 0; j < (int)t->y_sz; j++) {
   b2g_cnt = 0;
   g2b_cnt = 0;
   for (i = 0; i < (int)t->x_sz; i++) {

    if (!t->sw[i][j][k])
     continue;

    if (!t->sw[i][j][k]->ptgrp[0].port_cnt)
     b2g_cnt++;
    if (!t->sw[i][j][k]->ptgrp[1].port_cnt)
     g2b_cnt++;
   }
   if (b2g_cnt != g2b_cnt) {
    OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
     "ERR 4E32: strange failures in "
     "x ring at y=%d  z=%d"
     " b2g_cnt %u g2b_cnt %u\n",
     j, k, b2g_cnt, g2b_cnt);
    success = 0;
   }
   if (b2g_cnt > 1) {
    OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
     "ERR 4E33: disjoint failures in "
     "x ring at y=%d  z=%d\n", j, k);
    success = 0;
   }
  }

 for (i = 0; i < (int)t->x_sz; i++)
  for (k = 0; k < (int)t->z_sz; k++) {
   b2g_cnt = 0;
   g2b_cnt = 0;
   for (j = 0; j < (int)t->y_sz; j++) {

    if (!t->sw[i][j][k])
     continue;

    if (!t->sw[i][j][k]->ptgrp[2].port_cnt)
     b2g_cnt++;
    if (!t->sw[i][j][k]->ptgrp[3].port_cnt)
     g2b_cnt++;
   }
   if (b2g_cnt != g2b_cnt) {
    OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
     "ERR 4E34: strange failures in "
     "y ring at x=%d  z=%d"
     " b2g_cnt %u g2b_cnt %u\n",
     i, k, b2g_cnt, g2b_cnt);
    success = 0;
   }
   if (b2g_cnt > 1) {
    OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
     "ERR 4E35: disjoint failures in "
     "y ring at x=%d  z=%d\n", i, k);
    success = 0;
   }
  }

 for (j = 0; j < (int)t->y_sz; j++)
  for (i = 0; i < (int)t->x_sz; i++) {
   b2g_cnt = 0;
   g2b_cnt = 0;
   for (k = 0; k < (int)t->z_sz; k++) {

    if (!t->sw[i][j][k])
     continue;

    if (!t->sw[i][j][k]->ptgrp[4].port_cnt)
     b2g_cnt++;
    if (!t->sw[i][j][k]->ptgrp[5].port_cnt)
     g2b_cnt++;
   }
   if (b2g_cnt != g2b_cnt) {
    OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
     "ERR 4E36: strange failures in "
     "z ring at x=%d  y=%d"
     " b2g_cnt %u g2b_cnt %u\n",
     i, j, b2g_cnt, g2b_cnt);
    success = 0;
   }
   if (b2g_cnt > 1) {
    OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
     "ERR 4E37: disjoint failures in "
     "z ring at x=%d  y=%d\n", i, j);
    success = 0;
   }
  }

 if (t->flags & MSG_DEADLOCK) {
  OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
   "ERR 4E38: missing switch topology "
   "==> message deadlock!\n");
  success = 0;
 }
 return success;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct torus {TYPE_2__* osm; int seed_cnt; TYPE_1__* seed; } ;
struct link {TYPE_3__* end; } ;
typedef void* guid_t ;
struct TYPE_6__ {int port; int * link; int * sw; void* n_id; void* type; } ;
struct TYPE_5__ {int log; } ;
struct TYPE_4__ {struct link zp_link; struct link zm_link; struct link yp_link; struct link ym_link; struct link xp_link; struct link xm_link; } ;


 int OSM_LOG (int *,int ,char*,int) ;
 int OSM_LOG_ERROR ;
 void* PASSTHRU ;
 int parse_guid (struct torus*,void**,char const*) ;

__attribute__((used)) static
bool parse_dir_link(int c_dir, struct torus *t, const char *parse_sep)
{
 guid_t sw_guid0, sw_guid1;
 struct link *l;
 bool success = 0;

 if (!parse_guid(t, &sw_guid0, parse_sep))
  goto out;

 if (!parse_guid(t, &sw_guid1, parse_sep))
  goto out;

 if (!t) {
  success = 1;
  goto out;
 }

 switch (c_dir) {
 case -1:
  l = &t->seed[t->seed_cnt - 1].xm_link;
  break;
 case 1:
  l = &t->seed[t->seed_cnt - 1].xp_link;
  break;
 case -2:
  l = &t->seed[t->seed_cnt - 1].ym_link;
  break;
 case 2:
  l = &t->seed[t->seed_cnt - 1].yp_link;
  break;
 case -3:
  l = &t->seed[t->seed_cnt - 1].zm_link;
  break;
 case 3:
  l = &t->seed[t->seed_cnt - 1].zp_link;
  break;
 default:
  OSM_LOG(&t->osm->log, OSM_LOG_ERROR,
   "ERR 4E0E: unknown link direction %d\n", c_dir);
  goto out;
 }
 l->end[0].type = PASSTHRU;
 l->end[0].port = -1;
 l->end[0].n_id = sw_guid0;
 l->end[0].sw = ((void*)0);
 l->end[0].link = ((void*)0);

 l->end[1].type = PASSTHRU;
 l->end[1].port = -1;
 l->end[1].n_id = sw_guid1;
 l->end[1].sw = ((void*)0);
 l->end[1].link = ((void*)0);

 success = 1;
out:
 return success;
}

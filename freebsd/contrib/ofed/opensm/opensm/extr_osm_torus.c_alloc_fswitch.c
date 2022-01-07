
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fabric {size_t switch_cnt; size_t switch_cnt_max; struct f_switch** sw; TYPE_1__* osm; } ;
struct f_switch {unsigned int port_cnt; int n_id; void* port; } ;
typedef int guid_t ;
struct TYPE_2__ {int log; } ;


 int OSM_LOG (int *,int ,char*,int ) ;
 int OSM_LOG_ERROR ;
 struct f_switch* calloc (int,size_t) ;
 int errno ;
 int memset (struct f_switch**,int ,int) ;
 void* realloc (struct f_switch**,unsigned int) ;
 int strerror (int ) ;

__attribute__((used)) static
struct f_switch *alloc_fswitch(struct fabric *f,
          guid_t sw_id, unsigned port_cnt)
{
 size_t new_sw_sz;
 unsigned cnt_max;
 struct f_switch *sw = ((void*)0);
 void *ptr;

 if (f->switch_cnt >= f->switch_cnt_max) {

  cnt_max = 16 + 5 * f->switch_cnt_max / 4;
  ptr = realloc(f->sw, cnt_max * sizeof(*f->sw));
  if (!ptr) {
   OSM_LOG(&f->osm->log, OSM_LOG_ERROR,
    "ERR 4E02: realloc: %s\n", strerror(errno));
   goto out;
  }
  f->sw = ptr;
  f->switch_cnt_max = cnt_max;
  memset(&f->sw[f->switch_cnt], 0,
         (f->switch_cnt_max - f->switch_cnt)*sizeof(*f->sw));
 }
 new_sw_sz = sizeof(*sw) + port_cnt * sizeof(*sw->port);
 sw = calloc(1, new_sw_sz);
 if (!sw) {
  OSM_LOG(&f->osm->log, OSM_LOG_ERROR,
   "ERR 4E03: calloc: %s\n", strerror(errno));
  goto out;
 }
 sw->port = (void *)(sw + 1);
 sw->n_id = sw_id;
 sw->port_cnt = port_cnt;
 f->sw[f->switch_cnt++] = sw;
out:
 return sw;
}

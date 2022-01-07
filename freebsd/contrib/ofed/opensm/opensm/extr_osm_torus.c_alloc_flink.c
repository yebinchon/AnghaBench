
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {int dummy; } ;
struct fabric {size_t link_cnt; size_t link_cnt_max; struct link** link; TYPE_1__* osm; } ;
struct TYPE_2__ {int log; } ;


 int OSM_LOG (int *,int ,char*,int ) ;
 int OSM_LOG_ERROR ;
 struct link* calloc (int,int) ;
 int errno ;
 int memset (struct link**,int ,int) ;
 void* realloc (struct link**,unsigned int) ;
 int strerror (int ) ;

__attribute__((used)) static
struct link *alloc_flink(struct fabric *f)
{
 unsigned cnt_max;
 struct link *l = ((void*)0);
 void *ptr;

 if (f->link_cnt >= f->link_cnt_max) {

  cnt_max = 16 + 5 * f->link_cnt_max / 4;
  ptr = realloc(f->link, cnt_max * sizeof(*f->link));
  if (!ptr) {
   OSM_LOG(&f->osm->log, OSM_LOG_ERROR,
    "ERR 4E04: realloc: %s\n", strerror(errno));
   goto out;
  }
  f->link = ptr;
  f->link_cnt_max = cnt_max;
  memset(&f->link[f->link_cnt], 0,
         (f->link_cnt_max - f->link_cnt) * sizeof(*f->link));
 }
 l = calloc(1, sizeof(*l));
 if (!l) {
  OSM_LOG(&f->osm->log, OSM_LOG_ERROR,
   "ERR 4E05: calloc: %s\n", strerror(errno));
  goto out;
 }
 f->link[f->link_cnt++] = l;
out:
 return l;
}

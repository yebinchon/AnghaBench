
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {int u; int v; int perpage; int pages; scalar_t__ ptr; } ;
struct devstat {int dummy; } ;


 int pagesize ;

struct devstat *
geom_stats_snapshot_next(void *arg)
{
 struct devstat *gsp;
 struct snapshot *sp;

 sp = arg;
 gsp = (struct devstat *)
     (sp->ptr + sp->u * pagesize + sp->v * sizeof *gsp);
 if (++sp->v >= sp->perpage) {
  if (++sp->u >= sp->pages)
   return (((void*)0));
  else
   sp->v = 0;
 }
 return (gsp);
}

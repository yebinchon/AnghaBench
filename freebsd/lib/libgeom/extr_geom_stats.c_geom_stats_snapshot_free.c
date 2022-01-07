
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {struct snapshot* ptr; } ;


 int free (struct snapshot*) ;

void
geom_stats_snapshot_free(void *arg)
{
 struct snapshot *sp;

 sp = arg;
 free(sp->ptr);
 free(sp);
}

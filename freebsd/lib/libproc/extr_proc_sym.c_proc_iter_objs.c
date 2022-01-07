
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct proc_handle {size_t nmappings; TYPE_1__* mappings; } ;
typedef int (* proc_map_f ) (void*,TYPE_2__*,char*) ;
struct TYPE_7__ {char* pr_mapname; } ;
typedef TYPE_2__ prmap_t ;
typedef int path ;
typedef int last ;
struct TYPE_6__ {TYPE_2__ map; } ;


 int MAXPATHLEN ;
 char* basename (char*) ;
 int memset (char*,int ,int) ;
 int * proc_rdagent (struct proc_handle*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;
 int stub1 (void*,TYPE_2__*,char*) ;

int
proc_iter_objs(struct proc_handle *p, proc_map_f *func, void *cd)
{
 char last[MAXPATHLEN], path[MAXPATHLEN], *base;
 prmap_t *map;
 size_t i;
 int error;

 if (p->nmappings == 0)
  if (proc_rdagent(p) == ((void*)0))
   return (-1);

 error = 0;
 memset(last, 0, sizeof(last));
 for (i = 0; i < p->nmappings; i++) {
  map = &p->mappings[i].map;
  strlcpy(path, map->pr_mapname, sizeof(path));
  base = basename(path);






  if (strcmp(base, last) == 0)
   continue;
  if ((error = (*func)(cd, map, base)) != 0)
   break;
  strlcpy(last, path, sizeof(last));
 }
 return (error);
}

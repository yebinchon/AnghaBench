
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_handle {size_t nmappings; size_t exec_map; struct map_info* mappings; } ;
struct TYPE_2__ {int pr_vaddr; int pr_mapname; } ;
struct map_info {TYPE_1__ map; } ;
typedef int path ;


 int MAXPATHLEN ;
 struct map_info* _proc_addr2map (struct proc_handle*,int ) ;
 char* basename (char*) ;
 int * proc_rdagent (struct proc_handle*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlcpy (char*,int ,int) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static struct map_info *
_proc_name2map(struct proc_handle *p, const char *name)
{
 char path[MAXPATHLEN], *base;
 struct map_info *mapping;
 size_t i, len;

 if ((len = strlen(name)) == 0)
  return (((void*)0));
 if (p->nmappings == 0)
  if (proc_rdagent(p) == ((void*)0))
   return (((void*)0));
 for (i = 0; i < p->nmappings; i++) {
  mapping = &p->mappings[i];
  (void)strlcpy(path, mapping->map.pr_mapname, sizeof(path));
  base = basename(path);
  if (strcmp(base, name) == 0)
   return (mapping);
 }

 for (i = 0; i < p->nmappings; i++) {
  mapping = &p->mappings[i];
  strlcpy(path, mapping->map.pr_mapname, sizeof(path));
  base = basename(path);
  if (strncmp(base, name, len) == 0)
   return (mapping);
 }
 if (strcmp(name, "a.out") == 0)
  return (_proc_addr2map(p,
      p->mappings[p->exec_map].map.pr_vaddr));
 return (((void*)0));
}

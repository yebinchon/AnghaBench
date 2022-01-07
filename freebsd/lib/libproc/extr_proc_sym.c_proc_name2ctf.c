
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc_handle {int dummy; } ;
struct TYPE_3__ {int pr_mapname; } ;
typedef TYPE_1__ prmap_t ;
typedef int ctf_file_t ;


 int * ctf_open (int ,int*) ;
 TYPE_1__* proc_name2map (struct proc_handle*,char const*) ;

ctf_file_t *
proc_name2ctf(struct proc_handle *p, const char *name)
{

 ctf_file_t *ctf;
 prmap_t *map;
 int error;

 if ((map = proc_name2map(p, name)) == ((void*)0))
  return (((void*)0));

 ctf = ctf_open(map->pr_mapname, &error);
 return (ctf);





}

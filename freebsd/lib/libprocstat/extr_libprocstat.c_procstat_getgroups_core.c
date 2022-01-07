
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;
typedef int gid_t ;


 int PSC_TYPE_GROUPS ;
 int * procstat_core_get (struct procstat_core*,int ,int *,size_t*) ;

__attribute__((used)) static gid_t *
procstat_getgroups_core(struct procstat_core *core, unsigned int *cntp)
{
 size_t len;
 gid_t *groups;

 groups = procstat_core_get(core, PSC_TYPE_GROUPS, ((void*)0), &len);
 if (groups == ((void*)0))
  return (((void*)0));
 *cntp = len / sizeof(gid_t);
 return (groups);
}

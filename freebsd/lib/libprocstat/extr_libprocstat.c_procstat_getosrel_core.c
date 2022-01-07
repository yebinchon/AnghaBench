
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;


 int PSC_TYPE_OSREL ;
 int free (int*) ;
 int* procstat_core_get (struct procstat_core*,int ,int *,size_t*) ;

__attribute__((used)) static int
procstat_getosrel_core(struct procstat_core *core, int *osrelp)
{
 size_t len;
 int *buf;

 buf = procstat_core_get(core, PSC_TYPE_OSREL, ((void*)0), &len);
 if (buf == ((void*)0))
  return (-1);
 if (len < sizeof(*osrelp)) {
  free(buf);
  return (-1);
 }
 *osrelp = *buf;
 free(buf);
 return (0);
}

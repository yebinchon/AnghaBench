
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;


 int PSC_TYPE_UMASK ;
 int free (unsigned short*) ;
 unsigned short* procstat_core_get (struct procstat_core*,int ,int *,size_t*) ;

__attribute__((used)) static int
procstat_getumask_core(struct procstat_core *core, unsigned short *maskp)
{
 size_t len;
 unsigned short *buf;

 buf = procstat_core_get(core, PSC_TYPE_UMASK, ((void*)0), &len);
 if (buf == ((void*)0))
  return (-1);
 if (len < sizeof(*maskp)) {
  free(buf);
  return (-1);
 }
 *maskp = *buf;
 free(buf);
 return (0);
}

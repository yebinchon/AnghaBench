
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptrace_lwpinfo {int dummy; } ;
struct procstat_core {int dummy; } ;


 int PSC_TYPE_PTLWPINFO ;
 void* calloc (int,size_t) ;
 int free (void*) ;
 struct ptrace_lwpinfo* procstat_core_get (struct procstat_core*,int ,void*,size_t*) ;
 unsigned int procstat_core_note_count (struct procstat_core*,int ) ;

__attribute__((used)) static struct ptrace_lwpinfo *
procstat_getptlwpinfo_core(struct procstat_core *core, unsigned int *cntp)
{
 void *buf;
 struct ptrace_lwpinfo *pl;
 unsigned int cnt;
 size_t len;

 cnt = procstat_core_note_count(core, PSC_TYPE_PTLWPINFO);
 if (cnt == 0)
  return (((void*)0));

 len = cnt * sizeof(*pl);
 buf = calloc(1, len);
 pl = procstat_core_get(core, PSC_TYPE_PTLWPINFO, buf, &len);
 if (pl == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }
 *cntp = len / sizeof(*pl);
 return (pl);
}

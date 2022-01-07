
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int Elf_Auxinfo ;


 int CTL_KERN ;
 scalar_t__ EPERM ;
 scalar_t__ ESRCH ;
 int KERN_PROC ;
 int KERN_PROC_AUXV ;
 int PROC_AUXV_MAX ;
 scalar_t__ errno ;
 int free (int *) ;
 scalar_t__ is_elf32_sysctl (int) ;
 int * malloc (size_t) ;
 int nitems (int*) ;
 int * procstat_getauxv32_sysctl (int,unsigned int*) ;
 int sysctl (int*,int ,int *,size_t*,int *,int ) ;
 int warn (char*,int,...) ;

__attribute__((used)) static Elf_Auxinfo *
procstat_getauxv_sysctl(pid_t pid, unsigned int *cntp)
{
 Elf_Auxinfo *auxv;
 int name[4];
 size_t len;





 name[0] = CTL_KERN;
 name[1] = KERN_PROC;
 name[2] = KERN_PROC_AUXV;
 name[3] = pid;
 len = PROC_AUXV_MAX * sizeof(Elf_Auxinfo);
 auxv = malloc(len);
 if (auxv == ((void*)0)) {
  warn("malloc(%zu)", len);
  return (((void*)0));
 }
 if (sysctl(name, nitems(name), auxv, &len, ((void*)0), 0) == -1) {
  if (errno != ESRCH && errno != EPERM)
   warn("sysctl: kern.proc.auxv: %d: %d", pid, errno);
  free(auxv);
  return (((void*)0));
 }
 *cntp = len / sizeof(Elf_Auxinfo);
 return (auxv);
}

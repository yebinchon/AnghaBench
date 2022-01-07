
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {scalar_t__ type; int kd; } ;
struct pipestat {int dummy; } ;
struct filestat {int dummy; } ;


 scalar_t__ PROCSTAT_CORE ;
 scalar_t__ PROCSTAT_KVM ;
 scalar_t__ PROCSTAT_SYSCTL ;
 int _POSIX2_LINE_MAX ;
 int assert (struct pipestat*) ;
 int procstat_get_pipe_info_kvm (int ,struct filestat*,struct pipestat*,char*) ;
 int procstat_get_pipe_info_sysctl (struct filestat*,struct pipestat*,char*) ;
 int snprintf (char*,int ,char*) ;
 int warnx (char*,scalar_t__) ;

int
procstat_get_pipe_info(struct procstat *procstat, struct filestat *fst,
    struct pipestat *ps, char *errbuf)
{

 assert(ps);
 if (procstat->type == PROCSTAT_KVM) {
  return (procstat_get_pipe_info_kvm(procstat->kd, fst, ps,
      errbuf));
 } else if (procstat->type == PROCSTAT_SYSCTL ||
  procstat->type == PROCSTAT_CORE) {
  return (procstat_get_pipe_info_sysctl(fst, ps, errbuf));
 } else {
  warnx("unknown access method: %d", procstat->type);
  if (errbuf != ((void*)0))
   snprintf(errbuf, _POSIX2_LINE_MAX, "error");
  return (1);
 }
}

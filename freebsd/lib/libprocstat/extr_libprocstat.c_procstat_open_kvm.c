
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int * kd; int type; } ;
typedef int kvm_t ;


 int O_RDONLY ;
 int PROCSTAT_KVM ;
 int _POSIX2_LINE_MAX ;
 struct procstat* calloc (int,int) ;
 int free (struct procstat*) ;
 int * kvm_openfiles (char const*,char const*,int *,int ,char*) ;
 int warn (char*) ;
 int warnx (char*,char*) ;

struct procstat *
procstat_open_kvm(const char *nlistf, const char *memf)
{
 struct procstat *procstat;
 kvm_t *kd;
 char buf[_POSIX2_LINE_MAX];

 procstat = calloc(1, sizeof(*procstat));
 if (procstat == ((void*)0)) {
  warn("malloc()");
  return (((void*)0));
 }
 kd = kvm_openfiles(nlistf, memf, ((void*)0), O_RDONLY, buf);
 if (kd == ((void*)0)) {
  warnx("kvm_openfiles(): %s", buf);
  free(procstat);
  return (((void*)0));
 }
 procstat->type = PROCSTAT_KVM;
 procstat->kd = kd;
 return (procstat);
}

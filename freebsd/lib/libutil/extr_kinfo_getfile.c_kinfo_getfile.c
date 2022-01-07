
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_file {scalar_t__ kf_structsize; } ;
typedef int pid_t ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_FILEDESC ;
 struct kinfo_file* calloc (int,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (struct kinfo_file*,struct kinfo_file*,scalar_t__) ;
 int nitems (int*) ;
 int sysctl (int*,int ,char*,size_t*,int *,int ) ;

struct kinfo_file *
kinfo_getfile(pid_t pid, int *cntp)
{
 int mib[4];
 int error;
 int cnt;
 size_t len;
 char *buf, *bp, *eb;
 struct kinfo_file *kif, *kp, *kf;

 *cntp = 0;
 len = 0;
 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_FILEDESC;
 mib[3] = pid;

 error = sysctl(mib, nitems(mib), ((void*)0), &len, ((void*)0), 0);
 if (error)
  return (((void*)0));
 len = len * 4 / 3;
 buf = malloc(len);
 if (buf == ((void*)0))
  return (((void*)0));
 error = sysctl(mib, nitems(mib), buf, &len, ((void*)0), 0);
 if (error) {
  free(buf);
  return (((void*)0));
 }

 cnt = 0;
 bp = buf;
 eb = buf + len;
 while (bp < eb) {
  kf = (struct kinfo_file *)(uintptr_t)bp;
  if (kf->kf_structsize == 0)
   break;
  bp += kf->kf_structsize;
  cnt++;
 }

 kif = calloc(cnt, sizeof(*kif));
 if (kif == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }
 bp = buf;
 eb = buf + len;
 kp = kif;

 while (bp < eb) {
  kf = (struct kinfo_file *)(uintptr_t)bp;
  if (kf->kf_structsize == 0)
   break;

  memcpy(kp, kf, kf->kf_structsize);

  bp += kf->kf_structsize;

  kp->kf_structsize = sizeof(*kp);
  kp++;
 }
 free(buf);
 *cntp = cnt;
 return (kif);
}

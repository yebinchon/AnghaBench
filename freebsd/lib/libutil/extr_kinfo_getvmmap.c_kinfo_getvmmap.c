
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_vmentry {scalar_t__ kve_structsize; } ;
typedef int pid_t ;


 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_VMMAP ;
 struct kinfo_vmentry* calloc (int,int) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (struct kinfo_vmentry*,struct kinfo_vmentry*,scalar_t__) ;
 int nitems (int*) ;
 int sysctl (int*,int ,char*,size_t*,int *,int ) ;

struct kinfo_vmentry *
kinfo_getvmmap(pid_t pid, int *cntp)
{
 int mib[4];
 int error;
 int cnt;
 size_t len;
 char *buf, *bp, *eb;
 struct kinfo_vmentry *kiv, *kp, *kv;

 *cntp = 0;
 len = 0;
 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_VMMAP;
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
  kv = (struct kinfo_vmentry *)(uintptr_t)bp;
  if (kv->kve_structsize == 0)
   break;
  bp += kv->kve_structsize;
  cnt++;
 }

 kiv = calloc(cnt, sizeof(*kiv));
 if (kiv == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }
 bp = buf;
 eb = buf + len;
 kp = kiv;

 while (bp < eb) {
  kv = (struct kinfo_vmentry *)(uintptr_t)bp;
  if (kv->kve_structsize == 0)
   break;

  memcpy(kp, kv, kv->kve_structsize);

  bp += kv->kve_structsize;

  kp->kve_structsize = sizeof(*kp);
  kp++;
 }
 free(buf);
 *cntp = cnt;
 return (kiv);
}

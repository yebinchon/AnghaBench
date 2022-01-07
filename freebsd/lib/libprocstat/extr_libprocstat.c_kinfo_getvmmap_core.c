
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;
struct kinfo_vmentry {scalar_t__ kve_structsize; } ;


 int PSC_TYPE_VMMAP ;
 struct kinfo_vmentry* calloc (int,int) ;
 int free (char*) ;
 int memcpy (struct kinfo_vmentry*,struct kinfo_vmentry*,scalar_t__) ;
 char* procstat_core_get (struct procstat_core*,int ,int *,size_t*) ;

__attribute__((used)) static struct kinfo_vmentry *
kinfo_getvmmap_core(struct procstat_core *core, int *cntp)
{
 int cnt;
 size_t len;
 char *buf, *bp, *eb;
 struct kinfo_vmentry *kiv, *kp, *kv;

 buf = procstat_core_get(core, PSC_TYPE_VMMAP, ((void*)0), &len);
 if (buf == ((void*)0))
  return (((void*)0));
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

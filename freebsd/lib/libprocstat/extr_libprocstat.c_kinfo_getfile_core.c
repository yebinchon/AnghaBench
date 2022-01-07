
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat_core {int dummy; } ;
struct kinfo_file {scalar_t__ kf_structsize; } ;


 int PSC_TYPE_FILES ;
 struct kinfo_file* calloc (int,int) ;
 int free (char*) ;
 int memcpy (struct kinfo_file*,struct kinfo_file*,scalar_t__) ;
 char* procstat_core_get (struct procstat_core*,int ,int *,size_t*) ;

__attribute__((used)) static struct kinfo_file *
kinfo_getfile_core(struct procstat_core *core, int *cntp)
{
 int cnt;
 size_t len;
 char *buf, *bp, *eb;
 struct kinfo_file *kif, *kp, *kf;

 buf = procstat_core_get(core, PSC_TYPE_FILES, ((void*)0), &len);
 if (buf == ((void*)0))
  return (((void*)0));
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

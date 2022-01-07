
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_vmobject {int kvo_structsize; } ;


 scalar_t__ ENOMEM ;
 struct kinfo_vmobject* calloc (int,int) ;
 scalar_t__ errno ;
 int free (char*) ;
 int memcpy (struct kinfo_vmobject*,struct kinfo_vmobject*,int) ;
 char* reallocf (char*,size_t) ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int *,int ) ;

struct kinfo_vmobject *
kinfo_getvmobject(int *cntp)
{
 char *buf, *bp, *ep;
 struct kinfo_vmobject *kvo, *list, *kp;
 size_t len;
 int cnt, i;

 buf = ((void*)0);
 for (i = 0; i < 3; i++) {
  if (sysctlbyname("vm.objects", ((void*)0), &len, ((void*)0), 0) < 0) {
   free(buf);
   return (((void*)0));
  }
  buf = reallocf(buf, len);
  if (buf == ((void*)0))
   return (((void*)0));
  if (sysctlbyname("vm.objects", buf, &len, ((void*)0), 0) == 0)
   goto unpack;
  if (errno != ENOMEM) {
   free(buf);
   return (((void*)0));
  }
 }
 free(buf);
 return (((void*)0));

unpack:

 cnt = 0;
 bp = buf;
 ep = buf + len;
 while (bp < ep) {
  kvo = (struct kinfo_vmobject *)(uintptr_t)bp;
  bp += kvo->kvo_structsize;
  cnt++;
 }

 list = calloc(cnt, sizeof(*list));
 if (list == ((void*)0)) {
  free(buf);
  return (((void*)0));
 }


 bp = buf;
 kp = list;
 while (bp < ep) {
  kvo = (struct kinfo_vmobject *)(uintptr_t)bp;
  memcpy(kp, kvo, kvo->kvo_structsize);
  bp += kvo->kvo_structsize;
  kp->kvo_structsize = sizeof(*kp);
  kp++;
 }
 free(buf);
 *cntp = cnt;
 return (list);
}

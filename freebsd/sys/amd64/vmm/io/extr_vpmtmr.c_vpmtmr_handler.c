
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vpmtmr {int baseuptime; int freq_sbt; scalar_t__ baseval; } ;
struct vm {int dummy; } ;
typedef int sbintime_t ;


 int KASSERT (int,char*) ;
 int sbinuptime () ;
 struct vpmtmr* vm_pmtmr (struct vm*) ;

int
vpmtmr_handler(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *val)
{
 struct vpmtmr *vpmtmr;
 sbintime_t now, delta;

 if (!in || bytes != 4)
  return (-1);

 vpmtmr = vm_pmtmr(vm);





 now = sbinuptime();
 delta = now - vpmtmr->baseuptime;
 KASSERT(delta >= 0, ("vpmtmr_handler: uptime went backwards: "
     "%#lx to %#lx", vpmtmr->baseuptime, now));
 *val = vpmtmr->baseval + delta / vpmtmr->freq_sbt;

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef int vm_ooffset_t ;
typedef int vm_memattr_t ;
typedef int video_adapter_t ;
struct video_adapter_softc {int stride; int height; scalar_t__ fb_paddr; } ;


 int EINVAL ;

__attribute__((used)) static int
ipu3fb_mmap(video_adapter_t *adp, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
 struct video_adapter_softc *sc;

 sc = (struct video_adapter_softc *)adp;





 if (offset < sc->stride * sc->height) {
  *paddr = sc->fb_paddr + offset;
  return (0);
 }

 return (EINVAL);
}

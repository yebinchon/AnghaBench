
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vrtc {int addr; } ;
struct vm {int dummy; } ;


 int VRTC_LOCK (struct vrtc*) ;
 int VRTC_UNLOCK (struct vrtc*) ;
 struct vrtc* vm_rtc (struct vm*) ;

int
vrtc_addr_handler(struct vm *vm, int vcpuid, bool in, int port, int bytes,
    uint32_t *val)
{
 struct vrtc *vrtc;

 vrtc = vm_rtc(vm);

 if (bytes != 1)
  return (-1);

 if (in) {
  *val = 0xff;
  return (0);
 }

 VRTC_LOCK(vrtc);
 vrtc->addr = *val & 0x7f;
 VRTC_UNLOCK(vrtc);

 return (0);
}

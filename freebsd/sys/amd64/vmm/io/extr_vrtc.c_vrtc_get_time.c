
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vrtc {int dummy; } ;
struct vm {int dummy; } ;
typedef int sbintime_t ;


 int VRTC_LOCK (struct vrtc*) ;
 int VRTC_UNLOCK (struct vrtc*) ;
 struct vrtc* vm_rtc (struct vm*) ;
 int vrtc_curtime (struct vrtc*,int *) ;

time_t
vrtc_get_time(struct vm *vm)
{
 struct vrtc *vrtc;
 sbintime_t basetime;
 time_t t;

 vrtc = vm_rtc(vm);
 VRTC_LOCK(vrtc);
 t = vrtc_curtime(vrtc, &basetime);
 VRTC_UNLOCK(vrtc);

 return (t);
}

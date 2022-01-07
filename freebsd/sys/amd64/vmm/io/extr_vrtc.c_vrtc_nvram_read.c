
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct vrtc {int rtcdev; } ;
struct vm {int dummy; } ;
struct rtcdev {int dummy; } ;
typedef int sbintime_t ;


 int EINVAL ;
 int RTC_CENTURY ;
 int VRTC_LOCK (struct vrtc*) ;
 int VRTC_UNLOCK (struct vrtc*) ;
 int secs_to_rtc (int ,struct vrtc*,int ) ;
 struct vrtc* vm_rtc (struct vm*) ;
 int vrtc_curtime (struct vrtc*,int *) ;

int
vrtc_nvram_read(struct vm *vm, int offset, uint8_t *retval)
{
 struct vrtc *vrtc;
 sbintime_t basetime;
 time_t curtime;
 uint8_t *ptr;




 if (offset < 0 || offset >= sizeof(struct rtcdev))
  return (EINVAL);

 vrtc = vm_rtc(vm);
 VRTC_LOCK(vrtc);




 if (offset < 10 || offset == RTC_CENTURY) {
  curtime = vrtc_curtime(vrtc, &basetime);
  secs_to_rtc(curtime, vrtc, 0);
 }

 ptr = (uint8_t *)(&vrtc->rtcdev);
 *retval = ptr[offset];

 VRTC_UNLOCK(vrtc);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct rtcdev {int reg_a; int reg_d; scalar_t__ reg_c; int reg_b; } ;
struct vrtc {int base_rtctime; int addr; struct rtcdev rtcdev; int callout; int mtx; struct vm* vm; } ;
struct vm {int dummy; } ;


 int MTX_DEF ;
 int M_VRTC ;
 int M_WAITOK ;
 int M_ZERO ;
 int RTCSB_24HR ;
 int RTCSD_PWR ;
 int RTC_STATUSD ;
 int VRTC_BROKEN_TIME ;
 int VRTC_LOCK (struct vrtc*) ;
 int VRTC_UNLOCK (struct vrtc*) ;
 int callout_init (int *,int) ;
 struct vrtc* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sbinuptime () ;
 int secs_to_rtc (scalar_t__,struct vrtc*,int ) ;
 int vrtc_time_update (struct vrtc*,scalar_t__,int ) ;

struct vrtc *
vrtc_init(struct vm *vm)
{
 struct vrtc *vrtc;
 struct rtcdev *rtc;
 time_t curtime;

 vrtc = malloc(sizeof(struct vrtc), M_VRTC, M_WAITOK | M_ZERO);
 vrtc->vm = vm;
 mtx_init(&vrtc->mtx, "vrtc lock", ((void*)0), MTX_DEF);
 callout_init(&vrtc->callout, 1);


 rtc = &vrtc->rtcdev;
 rtc->reg_a = 0x20;
 rtc->reg_b = RTCSB_24HR;
 rtc->reg_c = 0;
 rtc->reg_d = RTCSD_PWR;


 vrtc->addr = RTC_STATUSD;




 curtime = 0;

 VRTC_LOCK(vrtc);
 vrtc->base_rtctime = VRTC_BROKEN_TIME;
 vrtc_time_update(vrtc, curtime, sbinuptime());
 secs_to_rtc(curtime, vrtc, 0);
 VRTC_UNLOCK(vrtc);

 return (vrtc);
}

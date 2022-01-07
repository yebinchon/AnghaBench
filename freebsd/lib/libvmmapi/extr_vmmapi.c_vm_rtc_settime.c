
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct vmctx {int fd; } ;
struct vm_rtc_time {int secs; } ;


 int VM_RTC_SETTIME ;
 int bzero (struct vm_rtc_time*,int) ;
 int ioctl (int ,int ,struct vm_rtc_time*) ;

int
vm_rtc_settime(struct vmctx *ctx, time_t secs)
{
 struct vm_rtc_time rtctime;
 int error;

 bzero(&rtctime, sizeof(struct vm_rtc_time));
 rtctime.secs = secs;
 error = ioctl(ctx->fd, VM_RTC_SETTIME, &rtctime);
 return (error);
}

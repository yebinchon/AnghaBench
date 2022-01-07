
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vmctx {int fd; } ;
struct vm_rtc_data {int offset; int value; } ;


 int VM_RTC_WRITE ;
 int bzero (struct vm_rtc_data*,int) ;
 int ioctl (int ,int ,struct vm_rtc_data*) ;

int
vm_rtc_write(struct vmctx *ctx, int offset, uint8_t value)
{
 struct vm_rtc_data rtcdata;
 int error;

 bzero(&rtcdata, sizeof(struct vm_rtc_data));
 rtcdata.offset = offset;
 rtcdata.value = value;
 error = ioctl(ctx->fd, VM_RTC_WRITE, &rtcdata);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {uintptr_t bsd_ioctl_len; scalar_t__ bsd_ioctl_data; } ;


 size_t IOCPARM_MAX ;
 uintptr_t LINUX_IOCTL_MAX_PTR ;
 uintptr_t LINUX_IOCTL_MIN_PTR ;
 struct task_struct* current ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
linux_remap_address(void **uaddr, size_t len)
{
 uintptr_t uaddr_val = (uintptr_t)(*uaddr);

 if (unlikely(uaddr_val >= LINUX_IOCTL_MIN_PTR &&
     uaddr_val < LINUX_IOCTL_MAX_PTR)) {
  struct task_struct *pts = current;
  if (pts == ((void*)0)) {
   *uaddr = ((void*)0);
   return (1);
  }


  uaddr_val -= LINUX_IOCTL_MIN_PTR;


  if ((len > IOCPARM_MAX) ||
      (uaddr_val + len) > pts->bsd_ioctl_len) {
   *uaddr = ((void*)0);
   return (1);
  }


  uaddr_val += (uintptr_t)pts->bsd_ioctl_data;


  *uaddr = (void *)uaddr_val;
  return (1);
 }
 return (0);
}

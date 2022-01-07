
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOPEN_MAX ;
 int VE_NOT_CHECKED ;
 scalar_t__ VE_STATUS_VALID ;
 int* ve_status ;
 scalar_t__ ve_status_state ;

int
ve_status_get(int fd)
{
 if (!ve_status_state) {
  return (VE_NOT_CHECKED);
 }
 if (ve_status_state == VE_STATUS_VALID &&
  fd >= 0 && fd < SOPEN_MAX)
  return (ve_status[fd]);
 return (ve_status[SOPEN_MAX]);
}

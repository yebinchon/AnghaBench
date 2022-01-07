
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOPEN_MAX ;
 int VE_STATUS_VALID ;
 int* ve_status ;
 int ve_status_state ;

__attribute__((used)) static void
ve_status_set(int fd, int ves)
{
 if (fd >= 0 && fd < SOPEN_MAX) {
  ve_status[fd] = ves;
  ve_status_state = VE_STATUS_VALID;
 }
 ve_status[SOPEN_MAX] = ves;
}

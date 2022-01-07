
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int ktimer ;
typedef int int64_t ;
typedef int int32_t ;


 int KeInitializeTimer (int *) ;
 int KeSetTimer (int *,int ,int *) ;
 int KeWaitForSingleObject (int *,int ,int ,scalar_t__,int *) ;
 int STATUS_SUCCESS ;
 int panic (char*,scalar_t__) ;

__attribute__((used)) static int32_t
KeDelayExecutionThread(uint8_t wait_mode, uint8_t alertable, int64_t *interval)
{
 ktimer timer;

 if (wait_mode != 0)
  panic("invalid wait_mode %d", wait_mode);

 KeInitializeTimer(&timer);
 KeSetTimer(&timer, *interval, ((void*)0));
 KeWaitForSingleObject(&timer, 0, 0, alertable, ((void*)0));

 return STATUS_SUCCESS;
}

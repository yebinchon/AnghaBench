
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ to_async_mask_value; } ;


 TYPE_1__ current_target ;
 int remote_desc ;
 scalar_t__ serial_can_async_p (int ) ;

__attribute__((used)) static int
remote_can_async_p (void)
{

  return (current_target.to_async_mask_value) && serial_can_async_p (remote_desc);
}

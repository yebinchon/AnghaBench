
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ index; } ;
struct cam_ed {TYPE_1__ devq_entry; } ;


 scalar_t__ CAM_UNQUEUED_INDEX ;

__attribute__((used)) static __inline int
device_is_queued(struct cam_ed *device)
{
 return (device->devq_entry.index != CAM_UNQUEUED_INDEX);
}

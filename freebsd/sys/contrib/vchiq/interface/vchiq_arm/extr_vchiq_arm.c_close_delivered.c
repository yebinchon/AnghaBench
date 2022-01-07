
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ close_pending; int close_event; TYPE_2__* service; } ;
typedef TYPE_1__ USER_SERVICE_T ;
struct TYPE_5__ {int handle; } ;


 int unlock_service (TYPE_2__*) ;
 int up (int *) ;
 int vchiq_arm_log_level ;
 int vchiq_log_info (int ,char*,int ) ;

__attribute__((used)) static void close_delivered(USER_SERVICE_T *user_service)
{
 vchiq_log_info(vchiq_arm_log_level,
  "close_delivered(handle=%x)",
  user_service->service->handle);

 if (user_service->close_pending) {

  unlock_service(user_service->service);


  up(&user_service->close_event);

  user_service->close_pending = 0;
 }
}

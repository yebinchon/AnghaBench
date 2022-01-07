
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ message; scalar_t__ service; } ;
typedef TYPE_1__ VCHI_HELD_MSG_T ;
typedef int VCHIQ_SERVICE_HANDLE_T ;
typedef int VCHIQ_HEADER_T ;


 int vchiq_release_message (int ,int *) ;

int32_t vchi_held_msg_release(VCHI_HELD_MSG_T *message)
{
 vchiq_release_message((VCHIQ_SERVICE_HANDLE_T)message->service,
  (VCHIQ_HEADER_T *)message->message);

 return 0;
}

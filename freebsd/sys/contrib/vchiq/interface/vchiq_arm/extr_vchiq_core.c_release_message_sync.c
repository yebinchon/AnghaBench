
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* remote; } ;
typedef TYPE_2__ VCHIQ_STATE_T ;
struct TYPE_8__ {int msgid; } ;
typedef TYPE_3__ VCHIQ_HEADER_T ;
struct TYPE_6__ {int sync_release; } ;


 int VCHIQ_MSGID_PADDING ;
 int remote_event_signal (int *) ;
 int wmb () ;

__attribute__((used)) static void
release_message_sync(VCHIQ_STATE_T *state, VCHIQ_HEADER_T *header)
{
 header->msgid = VCHIQ_MSGID_PADDING;
 wmb();
 remote_event_signal(&state->remote->sync_release);
}

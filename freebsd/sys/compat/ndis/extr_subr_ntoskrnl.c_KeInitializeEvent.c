
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int dh_size; int dh_type; int dh_sigstate; int dh_waitlisthead; } ;
struct TYPE_5__ {TYPE_1__ k_header; } ;
typedef TYPE_2__ nt_kevent ;


 int DISP_TYPE_NOTIFICATION_EVENT ;
 int DISP_TYPE_SYNCHRONIZATION_EVENT ;
 scalar_t__ EVENT_TYPE_NOTIFY ;
 int InitializeListHead (int *) ;

void
KeInitializeEvent(nt_kevent *kevent, uint32_t type, uint8_t state)
{
 InitializeListHead((&kevent->k_header.dh_waitlisthead));
 kevent->k_header.dh_sigstate = state;
 if (type == EVENT_TYPE_NOTIFY)
  kevent->k_header.dh_type = DISP_TYPE_NOTIFICATION_EVENT;
 else
  kevent->k_header.dh_type = DISP_TYPE_SYNCHRONIZATION_EVENT;
 kevent->k_header.dh_size = sizeof(nt_kevent) / sizeof(uint32_t);
}

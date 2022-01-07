
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct advertisement_state_machine {scalar_t__ state; int type; } ;
struct upnp_wps_device_sm {struct advertisement_state_machine advertisement; } ;


 int ADVERTISE_DOWN ;
 int advertisement_state_machine_handler ;
 int advertisement_state_machine_stop (struct upnp_wps_device_sm*,int ) ;
 int eloop_register_timeout (int ,int,int ,int *,struct upnp_wps_device_sm*) ;
 int os_random () ;

int advertisement_state_machine_start(struct upnp_wps_device_sm *sm)
{
 struct advertisement_state_machine *a = &sm->advertisement;
 int next_timeout_msec;

 advertisement_state_machine_stop(sm, 0);





 a->type = ADVERTISE_DOWN;
 a->state = 0;



 next_timeout_msec = (100 * (os_random() & 0xFF)) >> 8;
 return eloop_register_timeout(0, next_timeout_msec,
          advertisement_state_machine_handler,
          ((void*)0), sm);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VCHIQ_STATE_T ;


 int g_state ;
 int remote_event_pollall (int *) ;
 unsigned int vchiq_read_4 (int) ;

__attribute__((used)) static void
bcm_vchiq_intr(void *arg)
{
 VCHIQ_STATE_T *state = &g_state;
 unsigned int status;


 status = vchiq_read_4(0x40);

 if (status & 0x4) {
  remote_event_pollall(state);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int interface_receiver_t ;


 int BLOCKIO () ;
 int LOG_DEBUG ;
 int NTP_PORT ;
 int UNBLOCKIO () ;
 scalar_t__ disable_dynamic_updates ;
 int interrupt_worker_sleep () ;
 int msyslog (int ,char*) ;
 int update_interfaces (int ,int ,void*) ;

void
interface_update(
 interface_receiver_t receiver,
 void * data)
{
 int new_interface_found;

 if (disable_dynamic_updates)
  return;

 BLOCKIO();
 new_interface_found = update_interfaces(NTP_PORT, receiver, data);
 UNBLOCKIO();

 if (!new_interface_found)
  return;




 interrupt_worker_sleep();
}

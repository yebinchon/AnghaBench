
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {int starttime; scalar_t__ ifnum; } ;


 int LOG_EMERG ;
 int current_time ;
 struct interface* emalloc (int) ;
 int exit (int) ;
 int init_interface (struct interface*) ;
 int io_completion_port_add_interface (struct interface*) ;
 int memcpy (struct interface*,struct interface*,int) ;
 int msyslog (int ,char*) ;
 int sys_ifnum ;

__attribute__((used)) static struct interface *
new_interface(
 struct interface *interface
 )
{
 struct interface * iface;

 iface = emalloc(sizeof(*iface));

 if (((void*)0) == interface)
  init_interface(iface);
 else
  memcpy(iface, interface, sizeof(*iface));


 iface->ifnum = sys_ifnum++;
 iface->starttime = current_time;







 return iface;
}

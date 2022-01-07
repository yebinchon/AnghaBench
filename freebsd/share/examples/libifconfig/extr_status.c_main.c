
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifconfig_handle_t ;


 int err (int,char*) ;
 int errx (int,char*) ;
 int ifconfig_close (int *) ;
 scalar_t__ ifconfig_foreach_iface (int *,int ,int *) ;
 int * ifconfig_open () ;
 int print_iface ;

int
main(int argc, char *argv[])
{
 ifconfig_handle_t *lifh;

 if (argc != 1) {
  errx(1, "Usage: example_status");
 }

 lifh = ifconfig_open();
 if (lifh == ((void*)0)) {
  errx(1, "Failed to open libifconfig handle.");
 }

 if (ifconfig_foreach_iface(lifh, print_iface, ((void*)0)) != 0) {
  err(1, "Failed to get interfaces");
 }

 ifconfig_close(lifh);
 lifh = ((void*)0);
 return (-1);
}

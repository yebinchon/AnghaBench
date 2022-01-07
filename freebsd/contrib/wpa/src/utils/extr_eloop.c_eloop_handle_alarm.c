
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_ERROR ;
 int exit (int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eloop_handle_alarm(int sig)
{
 wpa_printf(MSG_ERROR, "eloop: could not process SIGINT or SIGTERM in "
     "two seconds. Looks like there\n"
     "is a bug that ends up in a busy loop that "
     "prevents clean shutdown.\n"
     "Killing program forcefully.\n");
 exit(1);
}

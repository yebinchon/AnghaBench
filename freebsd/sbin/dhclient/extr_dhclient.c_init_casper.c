
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int cap_close (int *) ;
 int * cap_init () ;
 int * cap_service_open (int *,char*) ;
 int * capsyslog ;
 int error (char*) ;

__attribute__((used)) static void
init_casper(void)
{
 cap_channel_t *casper;

 casper = cap_init();
 if (casper == ((void*)0))
  error("unable to start casper");

 capsyslog = cap_service_open(casper, "system.syslog");
 cap_close(casper);
 if (capsyslog == ((void*)0))
  error("unable to open system.syslog service");
}

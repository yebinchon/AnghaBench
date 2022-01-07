
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct console {int dummy; } ;
struct TYPE_2__ {int c_name; } ;


 int COMSPEED ;
 int EV_VOLATILE ;
 int comc_curspeed ;
 int comc_getspeed () ;
 scalar_t__ comc_parse_pcidev (char*) ;
 int comc_parseint (char*) ;
 int comc_pcidev_handle (scalar_t__) ;
 int comc_pcidev_set ;
 int comc_port ;
 int comc_port_set ;
 int comc_setup (int,int) ;
 int comc_speed_set ;
 TYPE_1__ comconsole ;
 int env_nounset ;
 int env_setenv (char*,int ,char*,int ,int ) ;
 char* getenv (char*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (char*,int ) ;
 int unsetenv (char*) ;

__attribute__((used)) static void
comc_probe(struct console *cp)
{
 char intbuf[16];
 char *cons, *env;
 int speed, port;
 uint32_t locator;

 if (comc_curspeed == 0) {
  comc_curspeed = COMSPEED;




  cons = getenv("console");
  if ((cons != ((void*)0) && strcmp(cons, comconsole.c_name) == 0) ||
      getenv("boot_multicons") != ((void*)0)) {
   comc_curspeed = comc_getspeed();
  }

  env = getenv("comconsole_speed");
  if (env != ((void*)0)) {
   speed = comc_parseint(env);
   if (speed > 0)
    comc_curspeed = speed;
  }

  sprintf(intbuf, "%d", comc_curspeed);
  unsetenv("comconsole_speed");
  env_setenv("comconsole_speed", EV_VOLATILE, intbuf,
      comc_speed_set, env_nounset);

  env = getenv("comconsole_port");
  if (env != ((void*)0)) {
   port = comc_parseint(env);
   if (port > 0)
    comc_port = port;
  }

  sprintf(intbuf, "%d", comc_port);
  unsetenv("comconsole_port");
  env_setenv("comconsole_port", EV_VOLATILE, intbuf,
      comc_port_set, env_nounset);

  env = getenv("comconsole_pcidev");
  if (env != ((void*)0)) {
   locator = comc_parse_pcidev(env);
   if (locator != 0)
    comc_pcidev_handle(locator);
  }

  unsetenv("comconsole_pcidev");
  env_setenv("comconsole_pcidev", EV_VOLATILE, env,
      comc_pcidev_set, env_nounset);
 }
 comc_setup(comc_curspeed, comc_port);
}

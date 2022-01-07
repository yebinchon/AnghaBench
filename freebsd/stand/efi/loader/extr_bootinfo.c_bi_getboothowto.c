
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EV_VOLATILE ;
 int RB_MUTE ;
 int RB_SERIAL ;
 int boot_env_to_howto () ;
 int boot_parse_cmdline (char*) ;
 int env_setenv (char*,int ,char*,int *,int *) ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,int,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strtol (char const*,int *,int ) ;

__attribute__((used)) static int
bi_getboothowto(char *kargs)
{
 const char *sw, *tmp;
 char *opts;
 char *console;
 int howto, speed, port;
 char buf[50];

 howto = boot_parse_cmdline(kargs);
 howto |= boot_env_to_howto();

 console = getenv("console");
 if (console != ((void*)0)) {
  if (strcmp(console, "comconsole") == 0)
   howto |= RB_SERIAL;
  if (strcmp(console, "nullconsole") == 0)
   howto |= RB_MUTE;

  if (strcmp(console, "efi") == 0 &&
      getenv("efi_8250_uid") != ((void*)0) &&
      getenv("hw.uart.console") == ((void*)0)) {
   speed = -1;
   port = -1;
   tmp = getenv("efi_com_speed");
   if (tmp != ((void*)0))
    speed = strtol(tmp, ((void*)0), 0);
   tmp = getenv("efi_com_port");
   if (tmp == ((void*)0))
    tmp = getenv("comconsole_port");
   if (tmp != ((void*)0))
    port = strtol(tmp, ((void*)0), 0);
   if (speed != -1 && port != -1) {
    snprintf(buf, sizeof(buf), "io:%d,br:%d", port,
        speed);
    env_setenv("hw.uart.console", EV_VOLATILE, buf,
        ((void*)0), ((void*)0));
   }
  }

 }

 return (howto);
}

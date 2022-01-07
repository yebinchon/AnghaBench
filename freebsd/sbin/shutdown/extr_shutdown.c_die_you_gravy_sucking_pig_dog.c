
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIGWINCH ;
 int _PATH_HALT ;
 int _PATH_REBOOT ;
 scalar_t__ docycle ;
 scalar_t__ dohalt ;
 scalar_t__ dopower ;
 scalar_t__ doreboot ;
 int execle (int ,char*,char*,char*,char*,...) ;
 int exit (int ) ;
 int finish (int ) ;
 int kill (int,int ) ;
 scalar_t__ killflg ;
 int mbuf ;
 int * nosync ;
 int oflag ;
 int printf (char*) ;
 int syslog (int ,char*,char*,...) ;
 int warn (int ) ;
 int whom ;

__attribute__((used)) static void
die_you_gravy_sucking_pig_dog(void)
{
 char *empty_environ[] = { ((void*)0) };

 syslog(LOG_NOTICE, "%s by %s: %s",
     doreboot ? "reboot" : dohalt ? "halt" : dopower ? "power-down" :
     docycle ? "power-cycle" : "shutdown", whom, mbuf);

 (void)printf("\r\nSystem shutdown time has arrived\007\007\r\n");
 if (killflg) {
  (void)printf("\rbut you'll have to do it yourself\r\n");
  exit(0);
 }
 if (!oflag) {
  (void)kill(1, doreboot ? SIGINT :
         dohalt ? SIGUSR1 :
         dopower ? SIGUSR2 :
         docycle ? SIGWINCH :
         SIGTERM);
 } else {
  if (doreboot) {
   execle(_PATH_REBOOT, "reboot", "-l", nosync,
    (char *)((void*)0), empty_environ);
   syslog(LOG_ERR, "shutdown: can't exec %s: %m.",
    _PATH_REBOOT);
   warn(_PATH_REBOOT);
  }
  else if (dohalt) {
   execle(_PATH_HALT, "halt", "-l", nosync,
    (char *)((void*)0), empty_environ);
   syslog(LOG_ERR, "shutdown: can't exec %s: %m.",
    _PATH_HALT);
   warn(_PATH_HALT);
  }
  else if (dopower) {
   execle(_PATH_HALT, "halt", "-l", "-p", nosync,
    (char *)((void*)0), empty_environ);
   syslog(LOG_ERR, "shutdown: can't exec %s: %m.",
    _PATH_HALT);
   warn(_PATH_HALT);
  }
  else if (docycle) {
   execle(_PATH_HALT, "halt", "-l", "-c", nosync,
    (char *)((void*)0), empty_environ);
   syslog(LOG_ERR, "shutdown: can't exec %s: %m.",
    _PATH_HALT);
   warn(_PATH_HALT);
  }
  (void)kill(1, SIGTERM);
 }

 finish(0);
}

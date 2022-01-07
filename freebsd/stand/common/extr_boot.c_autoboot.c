
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int CMD_ERROR ;
 int CMD_OK ;
 int autoboot_tried ;
 int command_boot (int,char**) ;
 char* command_errmsg ;
 int getchar () ;
 char* getenv (char*) ;
 scalar_t__ ischar () ;
 int loadakernel (int ,int ,char**) ;
 int printf (char*,char*,...) ;
 int putchar (char) ;
 int strtol (char*,char**,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static int
autoboot(int timeout, char *prompt)
{
 time_t when, otime, ntime;
 int c, yes;
 char *argv[2], *cp, *ep;
 char *kernelname;




 autoboot_tried = 1;

 if (timeout == -1) {
  timeout = 10;

  if ((cp = getenv("autoboot_delay"))) {
   timeout = strtol(cp, &ep, 0);
   if (cp == ep)
    timeout = 10;
  }
 }

 kernelname = getenv("kernelname");
 if (kernelname == ((void*)0)) {
  argv[0] = ((void*)0);
  loadakernel(0, 0, argv);
  kernelname = getenv("kernelname");
  if (kernelname == ((void*)0)) {
   command_errmsg = "no valid kernel found";
   return(CMD_ERROR);
  }
 }

 if (timeout >= 0) {
  otime = time(((void*)0));
  when = otime + timeout;

  yes = 0;





  printf("%s\n", (prompt == ((void*)0)) ? "Hit [Enter] to boot immediately, or any other key for command prompt." : prompt);


  for (;;) {
   if (ischar()) {
    c = getchar();
    if ((c == '\r') || (c == '\n'))
     yes = 1;
    break;

   }
   ntime = time(((void*)0));
   if (ntime >= when) {
    yes = 1;
    break;
   }

   if (ntime != otime) {
    printf("\rBooting [%s] in %d second%s... ",
        kernelname, (int)(when - ntime),
        (when-ntime)==1?"":"s");
    otime = ntime;
   }
  }
 } else {
  yes = 1;
 }

 if (yes)
  printf("\rBooting [%s]...               ", kernelname);
 putchar('\n');
 if (yes) {
  argv[0] = "boot";
  argv[1] = ((void*)0);
  return(command_boot(1, argv));
 }
 return(CMD_OK);
}

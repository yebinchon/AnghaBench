
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifconfig_handle_t ;


 int EINVAL ;
 int ENOMEM ;

 int SIOCIFDESTROY ;

 int errx (int ,char*) ;
 int free (char*) ;
 int ifconfig_close (int *) ;
 scalar_t__ ifconfig_destroy_interface (int *,char*) ;
 int ifconfig_err_errtype (int *) ;
 int ifconfig_err_ioctlreq (int *) ;
 int * ifconfig_open () ;
 int printf (char*,char*) ;
 char* strdup (char*) ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 char *ifname;
 ifconfig_handle_t *lifh;

 if (argc != 2) {
  errx(EINVAL, "Invalid number of arguments."
      " Only one argument is accepted, and it should be the name"
      " of the interface to be destroyed.");
 }


 ifname = strdup(argv[1]);

 printf("Interface name: %s\n", ifname);

 lifh = ifconfig_open();
 if (lifh == ((void*)0)) {
  errx(ENOMEM, "Failed to open libifconfig handle.");
  return (-1);
 }

 if (ifconfig_destroy_interface(lifh, ifname) == 0) {
  printf("Successfully destroyed interface '%s'.", ifname);
  ifconfig_close(lifh);
  lifh = ((void*)0);
  free(ifname);
  return (0);
 }

 switch (ifconfig_err_errtype(lifh)) {
 case 128:
  warnx("couldn't create socket. This shouldn't happen.\n");
  break;
 case 129:
  if (ifconfig_err_ioctlreq(lifh) == SIOCIFDESTROY) {
   warnx(
    "Failed to destroy interface (SIOCIFDESTROY)\n");
  }
  break;
 default:
  warnx(
   "Should basically never end up here in this example.\n");
  break;
 }

 ifconfig_close(lifh);
 lifh = ((void*)0);
 free(ifname);
 return (-1);
}

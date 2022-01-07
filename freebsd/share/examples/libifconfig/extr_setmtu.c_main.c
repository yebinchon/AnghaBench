
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifconfig_handle_t ;


 int EINVAL ;
 int ENOMEM ;

 int SIOCSIFMTU ;

 int errx (int ,char*) ;
 int free (char*) ;
 int ifconfig_close (int *) ;
 int ifconfig_err_errno (int *) ;
 int ifconfig_err_errtype (int *) ;
 int ifconfig_err_ioctlreq (int *) ;
 int * ifconfig_open () ;
 scalar_t__ ifconfig_set_mtu (int *,char*,int) ;
 int printf (char*,...) ;
 char* strdup (char*) ;
 scalar_t__ strtol (char*,char**,int) ;
 int warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 char *ifname, *ptr;
 int mtu;
 ifconfig_handle_t *lifh;

 if (argc != 3) {
  errx(EINVAL, "Invalid number of arguments."
      " First argument should be interface name, second argument"
      " should be the MTU to set.");
 }


 ifname = strdup(argv[1]);
 mtu = (int)strtol(argv[2], &ptr, 10);

 printf("Interface name: %s\n", ifname);
 printf("New MTU: %d", mtu);

 lifh = ifconfig_open();
 if (lifh == ((void*)0)) {
  errx(ENOMEM, "Failed to open libifconfig handle.");
  return (-1);
 }

 if (ifconfig_set_mtu(lifh, ifname, mtu) == 0) {
  printf("Successfully changed MTU of %s to %d\n", ifname, mtu);
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
  if (ifconfig_err_ioctlreq(lifh) == SIOCSIFMTU) {
   warnx("Failed to set MTU (SIOCSIFMTU)\n");
  } else {
   warnx(
    "Failed to set MTU due to error in unexpected ioctl() call %lu. Error code: %i.\n",
    ifconfig_err_ioctlreq(lifh),
    ifconfig_err_errno(lifh));
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

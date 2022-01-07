
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifconfig_handle_t ;


 int EINVAL ;
 int ENOMEM ;


 int err (int ,char*,...) ;
 int errx (int ,char*) ;
 int free (char*) ;
 int ifconfig_close (int *) ;
 int ifconfig_err_errno (int *) ;
 int ifconfig_err_errtype (int *) ;
 int ifconfig_err_ioctlreq (int *) ;
 scalar_t__ ifconfig_get_description (int *,char*,char**) ;
 int * ifconfig_open () ;
 scalar_t__ ifconfig_set_description (int *,char*,char*) ;
 int printf (char*,...) ;
 char* strdup (char*) ;

int
main(int argc, char *argv[])
{
 char *ifname, *ifdescr, *curdescr;
 ifconfig_handle_t *lifh;

 if (argc != 3) {
  errx(EINVAL, "Invalid number of arguments."
      " First argument should be interface name, second argument"
      " should be the description to set.");
 }


 ifname = strdup(argv[1]);
 ifdescr = strdup(argv[2]);
 curdescr = ((void*)0);

 printf("Interface name: %s\n", ifname);

 lifh = ifconfig_open();
 if (lifh == ((void*)0)) {
  errx(ENOMEM, "Failed to open libifconfig handle.");
  return (-1);
 }

 if (ifconfig_get_description(lifh, ifname, &curdescr) == 0) {
  printf("Old description: %s\n", curdescr);
 }

 printf("New description: %s\n\n", ifdescr);

 if (ifconfig_set_description(lifh, ifname, ifdescr) == 0) {
  printf("New description successfully set.\n");
 } else {
  switch (ifconfig_err_errtype(lifh)) {
  case 128:
   err(ifconfig_err_errno(lifh), "Socket error");
   break;
  case 129:
   err(ifconfig_err_errno(
        lifh), "IOCTL(%lu) error",
       ifconfig_err_ioctlreq(lifh));
   break;
  default:
   err(ifconfig_err_errno(lifh), "Other error");
   break;
  }
 }

 free(ifname);
 free(ifdescr);
 free(curdescr);
 ifname = ((void*)0);
 ifdescr = ((void*)0);
 curdescr = ((void*)0);

 ifconfig_close(lifh);
 return (0);
}

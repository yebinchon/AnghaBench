
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifconfig_handle_t ;


 int EINVAL ;
 int ENOMEM ;

 int SIOCGETVLAN ;
 int SIOCSETVLAN ;

 int USHRT_MAX ;
 int errx (int,char*,...) ;
 int free (char*) ;
 int ifconfig_close (int *) ;
 int ifconfig_err_errno (int *) ;
 int ifconfig_err_errtype (int *) ;
 int ifconfig_err_ioctlreq (int *) ;
 int * ifconfig_open () ;
 scalar_t__ ifconfig_set_vlantag (int *,char*,char*,unsigned short) ;
 int printf (char*,...) ;
 char* strdup (char*) ;
 unsigned short strtonum (char*,int ,int ,char const**) ;
 int warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 char *ifname, *parentif;
 unsigned short vlantag;
 const char *errstr;
 ifconfig_handle_t *lifh;

 if (argc != 4) {
  errx(EINVAL, "Invalid number of arguments."
      " Should provide exactly three arguments: "
      "INTERFACE, PARENT_INTERFACE and VLAN_TAG.");
 }


 ifname = strdup(argv[1]);
 parentif = strdup(argv[2]);
 vlantag = strtonum(argv[3], 0, USHRT_MAX, &errstr);

 if (errstr != ((void*)0)) {
  errx(1, "VLAN_TAG must be between 0 and %i.\n", USHRT_MAX);
 }

 printf("Interface: %s\nNew VLAN tag: %i\n", ifname, vlantag);

 lifh = ifconfig_open();
 if (lifh == ((void*)0)) {
  errx(ENOMEM, "Failed to open libifconfig handle.");
  return (-1);
 }

 if (ifconfig_set_vlantag(lifh, ifname, parentif, vlantag) == 0) {
  printf("Successfully changed vlan tag.\n");
  ifconfig_close(lifh);
  lifh = ((void*)0);
  free(ifname);
  free(parentif);
  return (0);
 }

 switch (ifconfig_err_errtype(lifh)) {
 case 128:
  warnx("couldn't create socket. This shouldn't happen.\n");
  break;
 case 129:
  if (ifconfig_err_ioctlreq(lifh) == SIOCGETVLAN) {
   warnx("Target interface isn't a VLAN interface.\n");
  }
  if (ifconfig_err_ioctlreq(lifh) == SIOCSETVLAN) {
   warnx(
    "Couldn't change VLAN properties of interface.\n");
  }
  break;
 default:
  warnx(
   "This is a thorough example accommodating for temporary"
   " 'not implemented yet' errors. That's likely what happened"
   " now. If not, your guess is as good as mine. ;)"
   " Error code: %d\n", ifconfig_err_errno(
    lifh));
  break;
 }

 ifconfig_close(lifh);
 lifh = ((void*)0);
 free(ifname);
 free(parentif);
 return (-1);
}

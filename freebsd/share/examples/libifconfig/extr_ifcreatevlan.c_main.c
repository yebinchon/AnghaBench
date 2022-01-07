
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ifconfig_handle_t ;


 int EINVAL ;
 int ENOMEM ;

 int SIOCIFCREATE2 ;

 int USHRT_MAX ;
 int errx (int,char*,...) ;
 int free (char*) ;
 int ifconfig_close (int *) ;
 scalar_t__ ifconfig_create_interface_vlan (int *,char*,char**,char*,unsigned short) ;
 int ifconfig_err_errno (int *) ;
 int ifconfig_err_errtype (int *) ;
 int ifconfig_err_ioctlreq (int *) ;
 int * ifconfig_open () ;
 int printf (char*,char*,...) ;
 char* strdup (char*) ;
 unsigned short strtonum (char*,int ,int ,char const**) ;
 int warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 char *parentif, *ifactualname;
 unsigned short vlantag;
 const char *errstr;
 ifconfig_handle_t *lifh;

 if (argc != 3) {
  errx(EINVAL, "Invalid number of arguments."
      " Should provide exactly two arguments: "
      "PARENT_INTERFACE and VLAN_TAG.");
 }


 parentif = strdup(argv[1]);
 vlantag = strtonum(argv[2], 0, USHRT_MAX, &errstr);

 if (errstr != ((void*)0)) {
  errx(1, "VLAN_TAG must be between 0 and %i.\n", USHRT_MAX);
 }

 printf("Parent interface: %s\nVLAN tag: %i\n", parentif, vlantag);

 lifh = ifconfig_open();
 if (lifh == ((void*)0)) {
  errx(ENOMEM, "Failed to open libifconfig handle.");
  return (-1);
 }

 if (ifconfig_create_interface_vlan(lifh, "vlan", &ifactualname,
     parentif, vlantag) == 0) {
  printf("Successfully created interface '%s'\n", ifactualname);
  ifconfig_close(lifh);
  lifh = ((void*)0);
  free(parentif);
  free(ifactualname);
  return (0);
 }

 switch (ifconfig_err_errtype(lifh)) {
 case 128:
  warnx("couldn't create socket. This shouldn't happen.\n");
  break;
 case 129:
  if (ifconfig_err_ioctlreq(lifh) == SIOCIFCREATE2) {
   warnx(
    "Failed to create interface (SIOCIFCREATE2)\n");
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
 free(parentif);
 free(ifactualname);
 return (-1);
}

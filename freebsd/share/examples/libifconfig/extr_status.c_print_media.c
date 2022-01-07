
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {scalar_t__ ifm_current; scalar_t__ ifm_active; int ifm_status; int ifm_count; scalar_t__* ifm_ulist; } ;
struct ifaddrs {int ifa_name; } ;
typedef int opts ;
typedef int ifconfig_handle_t ;


 int IFM_AVALID ;
 scalar_t__ OK ;
 int err (int,char*) ;
 int free (struct ifmediareq*) ;
 scalar_t__ ifconfig_err_errtype (int *) ;
 scalar_t__ ifconfig_media_get_mediareq (int *,int ,struct ifmediareq**) ;
 int ifconfig_media_get_options_string (scalar_t__,char*,int) ;
 char* ifconfig_media_get_status (struct ifmediareq*) ;
 char* ifconfig_media_get_subtype (scalar_t__) ;
 char* ifconfig_media_get_type (scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_media(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 int i;
 struct ifmediareq *ifmr;
 char opts[80];

 if (ifconfig_media_get_mediareq(lifh, ifa->ifa_name, &ifmr) != 0) {
  if (ifconfig_err_errtype(lifh) != OK) {
   err(1, "Failed to get media info");
  } else {
   return;
  }
 }

 printf("\tmedia: %s %s", ifconfig_media_get_type(ifmr->ifm_current),
     ifconfig_media_get_subtype(ifmr->ifm_current));
 if (ifmr->ifm_active != ifmr->ifm_current) {
  printf(" (%s", ifconfig_media_get_subtype(ifmr->ifm_active));
  ifconfig_media_get_options_string(ifmr->ifm_active, opts,
      sizeof(opts));
  if (opts[0] != '\0') {
   printf(" <%s>)\n", opts);
  } else {
   printf(")\n");
  }
 } else {
  printf("\n");
 }

 if (ifmr->ifm_status & IFM_AVALID) {
  printf("\tstatus: %s\n",
      ifconfig_media_get_status(ifmr));
 }

 printf("\tsupported media:\n");
 for (i = 0; i < ifmr->ifm_count; i++) {
  printf("\t\tmedia %s",
      ifconfig_media_get_subtype(ifmr->ifm_ulist[i]));
  ifconfig_media_get_options_string(ifmr->ifm_ulist[i], opts,
      sizeof(opts));
  if (opts[0] != '\0') {
   printf(" mediaopt %s\n", opts);
  } else {
   printf("\n");
  }
 }
 free(ifmr);
}

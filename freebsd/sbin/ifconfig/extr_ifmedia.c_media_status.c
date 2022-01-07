
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmediareq {int ifm_count; int* ifm_ulist; scalar_t__ ifm_current; scalar_t__ ifm_active; int ifm_status; int ifdr_reason; char* ifdr_msg; int ifdr_vendor; int ifdr_name; int ifm_name; } ;
struct ifdownreason {int ifm_count; int* ifm_ulist; scalar_t__ ifm_current; scalar_t__ ifm_active; int ifm_status; int ifdr_reason; char* ifdr_msg; int ifdr_vendor; int ifdr_name; int ifm_name; } ;
typedef int ifmr ;
typedef int ifdr ;
typedef int caddr_t ;




 int IFM_ACTIVE ;

 int IFM_AVALID ;


 int IFM_IEEE80211_STA ;
 int IFM_OPMODE (scalar_t__) ;
 int IFM_TYPE (scalar_t__) ;
 int SIOCGIFDOWNREASON ;
 int SIOCGIFMEDIA ;
 int SIOCGIFXMEDIA ;
 int err (int,char*) ;
 int free (int*) ;
 scalar_t__ ioctl (int,int ,int ) ;
 scalar_t__ malloc (int) ;
 int memset (struct ifmediareq*,int ,int) ;
 int name ;
 int print_media_word (scalar_t__,int) ;
 int print_media_word_ifconfig (int) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ supmedia ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
media_status(int s)
{
 struct ifmediareq ifmr;
 struct ifdownreason ifdr;
 int *media_list, i;
 bool no_carrier, xmedia;

 (void) memset(&ifmr, 0, sizeof(ifmr));
 (void) strlcpy(ifmr.ifm_name, name, sizeof(ifmr.ifm_name));
 xmedia = 1;




 if (ioctl(s, SIOCGIFXMEDIA, (caddr_t)&ifmr) < 0)
  xmedia = 0;
 if (!xmedia && ioctl(s, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0) {



  return;
 }

 if (ifmr.ifm_count == 0) {
  warnx("%s: no media types?", name);
  return;
 }

 media_list = (int *)malloc(ifmr.ifm_count * sizeof(int));
 if (media_list == ((void*)0))
  err(1, "malloc");
 ifmr.ifm_ulist = media_list;

 if (xmedia) {
  if (ioctl(s, SIOCGIFXMEDIA, (caddr_t)&ifmr) < 0)
   err(1, "SIOCGIFXMEDIA");
 } else {
  if (ioctl(s, SIOCGIFMEDIA, (caddr_t)&ifmr) < 0)
   err(1, "SIOCGIFMEDIA");
 }

 printf("\tmedia: ");
 print_media_word(ifmr.ifm_current, 1);
 if (ifmr.ifm_active != ifmr.ifm_current) {
  putchar(' ');
  putchar('(');
  print_media_word(ifmr.ifm_active, 0);
  putchar(')');
 }

 putchar('\n');

 if (ifmr.ifm_status & IFM_AVALID) {
  no_carrier = 0;
  printf("\tstatus: ");
  switch (IFM_TYPE(ifmr.ifm_active)) {
  case 129:
  case 130:
   if (ifmr.ifm_status & IFM_ACTIVE)
    printf("active");
   else
    no_carrier = 1;
   break;

  case 128:
   if (ifmr.ifm_status & IFM_ACTIVE) {

    if (IFM_OPMODE(ifmr.ifm_active) == IFM_IEEE80211_STA)
     printf("associated");
    else
     printf("running");
   } else
    no_carrier = 1;
   break;
  }
  if (no_carrier) {
   printf("no carrier");
   memset(&ifdr, 0, sizeof(ifdr));
   strlcpy(ifdr.ifdr_name, name, sizeof(ifdr.ifdr_name));
   if (ioctl(s, SIOCGIFDOWNREASON, (caddr_t)&ifdr) == 0) {
    switch (ifdr.ifdr_reason) {
    case 132:
     printf(" (%s)", ifdr.ifdr_msg);
     break;
    case 131:
     printf(" (vendor code %d)",
         ifdr.ifdr_vendor);
     break;
    default:
     break;
    }
   }
  }
  putchar('\n');
 }

 if (ifmr.ifm_count > 0 && supmedia) {
  printf("\tsupported media:\n");
  for (i = 0; i < ifmr.ifm_count; i++) {
   printf("\t\t");
   print_media_word_ifconfig(media_list[i]);
   putchar('\n');
  }
 }

 free(media_list);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ic_nchans; } ;
struct ieee80211_devcaps_req {scalar_t__ dc_drivercaps; scalar_t__ dc_cryptocaps; scalar_t__ dc_htcaps; scalar_t__ dc_vhtcaps; TYPE_1__ dc_chaninfo; } ;


 int IEEE80211_CRYPTO_BITS ;
 int IEEE80211_C_BITS ;
 int IEEE80211_DEVCAPS_SIZE (int) ;
 int IEEE80211_HTCAP_BITS ;
 int IEEE80211_VHTCAP_BITS ;
 int MAXCHAN ;
 TYPE_1__* chaninfo ;
 int errx (int,char*) ;
 int free (struct ieee80211_devcaps_req*) ;
 int getdevcaps (int,struct ieee80211_devcaps_req*) ;
 struct ieee80211_devcaps_req* malloc (int ) ;
 int print_channels (int,TYPE_1__*,int,scalar_t__) ;
 int printb (char*,scalar_t__,int ) ;
 int putchar (char) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
list_capabilities(int s)
{
 struct ieee80211_devcaps_req *dc;

 if (verbose)
  dc = malloc(IEEE80211_DEVCAPS_SIZE(MAXCHAN));
 else
  dc = malloc(IEEE80211_DEVCAPS_SIZE(1));
 if (dc == ((void*)0))
  errx(1, "no space for device capabilities");
 dc->dc_chaninfo.ic_nchans = verbose ? MAXCHAN : 1;
 getdevcaps(s, dc);
 printb("drivercaps", dc->dc_drivercaps, IEEE80211_C_BITS);
 if (dc->dc_cryptocaps != 0 || verbose) {
  putchar('\n');
  printb("cryptocaps", dc->dc_cryptocaps, IEEE80211_CRYPTO_BITS);
 }
 if (dc->dc_htcaps != 0 || verbose) {
  putchar('\n');
  printb("htcaps", dc->dc_htcaps, IEEE80211_HTCAP_BITS);
 }
 if (dc->dc_vhtcaps != 0 || verbose) {
  putchar('\n');
  printb("vhtcaps", dc->dc_vhtcaps, IEEE80211_VHTCAP_BITS);
 }

 putchar('\n');
 if (verbose) {
  chaninfo = &dc->dc_chaninfo;
  print_channels(s, &dc->dc_chaninfo, 1 , verbose);
 }
 free(dc);
}

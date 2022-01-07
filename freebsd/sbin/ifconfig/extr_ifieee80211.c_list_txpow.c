
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct ieee80211req_chaninfo {int ic_nchans; struct ieee80211_channel* ic_chans; } ;
struct ieee80211_channel {scalar_t__ ic_maxpower; int ic_ieee; } ;
typedef int reported ;
struct TYPE_3__ {int ic_nchans; struct ieee80211_channel* ic_chans; } ;


 int IEEE80211_CHANINFO_SPACE (TYPE_1__*) ;
 int IEEE80211_CHAN_BYTES ;
 int assert (int) ;
 TYPE_1__* chaninfo ;
 int errx (int,char*) ;
 int free (struct ieee80211req_chaninfo*) ;
 int getchaninfo (int) ;
 scalar_t__ isset (int *,int ) ;
 struct ieee80211req_chaninfo* malloc (int ) ;
 int memset (int *,int ,int) ;
 int print_txpow (struct ieee80211_channel*) ;
 int print_txpow_verbose (struct ieee80211_channel*) ;
 int printf (char*) ;
 int setbit (int *,int ) ;
 int verbose ;

__attribute__((used)) static void
list_txpow(int s)
{
 struct ieee80211req_chaninfo *achans;
 uint8_t reported[IEEE80211_CHAN_BYTES];
 struct ieee80211_channel *c, *prev;
 int i, half;

 getchaninfo(s);
 achans = malloc(IEEE80211_CHANINFO_SPACE(chaninfo));
 if (achans == ((void*)0))
  errx(1, "no space for active channel list");
 achans->ic_nchans = 0;
 memset(reported, 0, sizeof(reported));
 for (i = 0; i < chaninfo->ic_nchans; i++) {
  c = &chaninfo->ic_chans[i];

  if (isset(reported, c->ic_ieee) && !verbose) {

   assert(achans->ic_nchans > 0);
   prev = &achans->ic_chans[achans->ic_nchans-1];

   if (c->ic_maxpower > prev->ic_maxpower)
    *prev = *c;
  } else {
   achans->ic_chans[achans->ic_nchans++] = *c;
   setbit(reported, c->ic_ieee);
  }
 }
 if (!verbose) {
  half = achans->ic_nchans / 2;
  if (achans->ic_nchans % 2)
   half++;

  for (i = 0; i < achans->ic_nchans / 2; i++) {
   print_txpow(&achans->ic_chans[i]);
   print_txpow(&achans->ic_chans[half+i]);
   printf("\n");
  }
  if (achans->ic_nchans % 2) {
   print_txpow(&achans->ic_chans[i]);
   printf("\n");
  }
 } else {
  for (i = 0; i < achans->ic_nchans; i++) {
   print_txpow_verbose(&achans->ic_chans[i]);
   printf("\n");
  }
 }
 free(achans);
}

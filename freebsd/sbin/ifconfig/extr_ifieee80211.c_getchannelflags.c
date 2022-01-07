
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct ieee80211_channel {int ic_flags; } ;


 int IEEE80211_CHAN_A ;
 int IEEE80211_CHAN_B ;
 int IEEE80211_CHAN_G ;
 int IEEE80211_CHAN_HALF ;
 int IEEE80211_CHAN_HT ;
 int IEEE80211_CHAN_HT20 ;
 int IEEE80211_CHAN_HT40D ;
 int IEEE80211_CHAN_HT40U ;
 int IEEE80211_CHAN_QUARTER ;
 int IEEE80211_CHAN_STURBO ;
 int IEEE80211_CHAN_TURBO ;
 int IEEE80211_CHAN_VHT ;
 int IEEE80211_CHAN_VHT160 ;
 int IEEE80211_CHAN_VHT20 ;
 int IEEE80211_CHAN_VHT40D ;
 int IEEE80211_CHAN_VHT40U ;
 int IEEE80211_CHAN_VHT80 ;
 int _CHAN_HT ;
 int errx (int,char*,char const*,...) ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isupper (int) ;
 int mapchan (struct ieee80211_channel*,int,int ) ;
 int mapfreq (struct ieee80211_channel*,int,int ) ;
 char* strchr (char const*,char) ;
 int strtoul (char const*,char**,int) ;
 int tolower (int) ;

__attribute__((used)) static int
getchannelflags(const char *val, int freq)
{

 const char *cp;
 int flags;
 int is_vht = 0;

 flags = 0;

 cp = strchr(val, ':');
 if (cp != ((void*)0)) {
  for (cp++; isalpha((int) *cp); cp++) {

   int c = *cp;
   if (isupper(c))
    c = tolower(c);
   switch (c) {
   case 'a':
    flags |= IEEE80211_CHAN_A;
    break;
   case 'b':
    flags |= IEEE80211_CHAN_B;
    break;
   case 'g':
    flags |= IEEE80211_CHAN_G;
    break;
   case 'v':
    is_vht = 1;

   case 'h':
   case 'n':
    flags |= 0x80000000;
    break;
   case 'd':
    flags |= IEEE80211_CHAN_TURBO;
    break;
   case 't':

    if ((flags & (IEEE80211_CHAN_STURBO|0x80000000)) == 0)
     flags |= IEEE80211_CHAN_TURBO;
    break;
   case 's':
    flags |= IEEE80211_CHAN_STURBO;
    break;
   default:
    errx(-1, "%s: Invalid channel attribute %c\n",
        val, *cp);
   }
  }
 }
 cp = strchr(val, '/');
 if (cp != ((void*)0)) {
  char *ep;
  u_long cw = strtoul(cp+1, &ep, 10);

  switch (cw) {
  case 5:
   flags |= IEEE80211_CHAN_QUARTER;
   break;
  case 10:
   flags |= IEEE80211_CHAN_HALF;
   break;
  case 20:

   flags |= IEEE80211_CHAN_HT20;
   break;
  case 40:
  case 80:
  case 160:

   if (cw == 80)
    flags |= IEEE80211_CHAN_VHT80;
   else if (cw == 160)
    flags |= IEEE80211_CHAN_VHT160;


   if (ep != ((void*)0) && *ep == '+')
    flags |= IEEE80211_CHAN_HT40U;
   else if (ep != ((void*)0) && *ep == '-')
    flags |= IEEE80211_CHAN_HT40D;
   break;
  default:
   errx(-1, "%s: Invalid channel width\n", val);
  }
 }




 if ((flags & 0x80000000) == 0) {







  flags &= ~IEEE80211_CHAN_HT;
  flags &= ~IEEE80211_CHAN_VHT;
 } else {





  flags &= ~0x80000000;
  if ((flags & IEEE80211_CHAN_HT) == 0) {
   struct ieee80211_channel chan;




   if (freq > 255)
    mapfreq(&chan, freq, 0);
   else
    mapchan(&chan, freq, 0);
   flags |= (chan.ic_flags & IEEE80211_CHAN_HT);
  }





  if (is_vht && (flags & IEEE80211_CHAN_HT)) {




   if (flags & IEEE80211_CHAN_VHT80)
    ;
   else if (flags & IEEE80211_CHAN_HT20)
    flags |= IEEE80211_CHAN_VHT20;
   else if (flags & IEEE80211_CHAN_HT40U)
    flags |= IEEE80211_CHAN_VHT40U;
   else if (flags & IEEE80211_CHAN_HT40D)
    flags |= IEEE80211_CHAN_VHT40D;
  }
 }
 return flags;

}

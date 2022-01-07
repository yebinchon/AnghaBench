
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_channel {int ic_freq; } ;


 scalar_t__ ERANGE ;
 int IEEE80211_CHAN_ANY ;
 scalar_t__ errno ;
 int errx (int,char*,char*) ;
 int getchaninfo (int) ;
 int getchannelflags (char const*,int) ;
 scalar_t__ isanyarg (char const*) ;
 int mapchan (struct ieee80211_channel*,int,int) ;
 int mapfreq (struct ieee80211_channel*,int,int) ;
 int memset (struct ieee80211_channel*,int ,int) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static void
getchannel(int s, struct ieee80211_channel *chan, const char *val)
{
 int v, flags;
 char *eptr;

 memset(chan, 0, sizeof(*chan));
 if (isanyarg(val)) {
  chan->ic_freq = IEEE80211_CHAN_ANY;
  return;
 }
 getchaninfo(s);
 errno = 0;
 v = strtol(val, &eptr, 10);
 if (val[0] == '\0' || val == eptr || errno == ERANGE ||

     (eptr[0] != '\0' && eptr[0] != ':' && eptr[0] != '/'))
  errx(1, "invalid channel specification%s",
      errno == ERANGE ? " (out of range)" : "");
 flags = getchannelflags(val, v);
 if (v > 255) {
  mapfreq(chan, v, flags);
 } else {
  mapchan(chan, v, flags);
 }
}

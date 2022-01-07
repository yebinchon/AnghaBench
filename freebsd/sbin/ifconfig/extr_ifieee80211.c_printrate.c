
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_RATE_MCS ;
 int LINE_CHECK (char*,char const*,int) ;

__attribute__((used)) static void
printrate(const char *tag, int v, int defrate, int defmcs)
{
 if ((v & IEEE80211_RATE_MCS) == 0) {
  if (v != defrate) {
   if (v & 1)
    LINE_CHECK("%s %d.5", tag, v/2);
   else
    LINE_CHECK("%s %d", tag, v/2);
  }
 } else {
  if (v != defmcs)
   LINE_CHECK("%s %d", tag, v &~ 0x80);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_WMEPARAM_BSS ;
 int WME_AC_BE ;
 int WME_AC_VO ;
 int list_wme_aci (int,char const*,int) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
list_wme(int s)
{
 static const char *acnames[] = { "AC_BE", "AC_BK", "AC_VI", "AC_VO" };
 int ac;

 if (verbose) {

  for (ac = WME_AC_BE; ac <= WME_AC_VO; ac++) {
 again:
   if (ac & IEEE80211_WMEPARAM_BSS)
    list_wme_aci(s, "     ", ac);
   else
    list_wme_aci(s, acnames[ac], ac);
   if ((ac & IEEE80211_WMEPARAM_BSS) == 0) {
    ac |= IEEE80211_WMEPARAM_BSS;
    goto again;
   } else
    ac &= ~IEEE80211_WMEPARAM_BSS;
  }
 } else {

  for (ac = WME_AC_BE; ac <= WME_AC_VO; ac++)
   list_wme_aci(s, acnames[ac], ac);
 }
}

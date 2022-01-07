
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IEEE80211_CHAN_A ;
 int IEEE80211_CHAN_B ;
 int IEEE80211_CHAN_G ;
 int IEEE80211_CHAN_HALF ;
 int IEEE80211_CHAN_HT ;
 int IEEE80211_CHAN_QUARTER ;
 int IEEE80211_CHAN_STURBO ;
 int IEEE80211_CHAN_TURBO ;
 int IEEE80211_CHAN_VHT ;
 int errx (int,char*,char const*,char const) ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isupper (int) ;
 char* strchr (char const*,char) ;
 int tolower (int) ;

__attribute__((used)) static int
getmodeflags(const char *val)
{
 const char *cp;
 int flags;

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
   case 'n':
    flags |= IEEE80211_CHAN_HT;
    break;
   case 'd':
    flags |= IEEE80211_CHAN_TURBO;
    break;
   case 't':

    if ((flags & (IEEE80211_CHAN_STURBO|IEEE80211_CHAN_HT)) == 0)
     flags |= IEEE80211_CHAN_TURBO;
    break;
   case 's':
    flags |= IEEE80211_CHAN_STURBO;
    break;
   case 'h':
    flags |= IEEE80211_CHAN_HALF;
    break;
   case 'q':
    flags |= IEEE80211_CHAN_QUARTER;
    break;
   case 'v':

    flags |= IEEE80211_CHAN_VHT;
    break;
   default:
    errx(-1, "%s: Invalid mode attribute %c\n",
        val, *cp);
   }
  }
 }
 return flags;
}

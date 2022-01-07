
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211req_chanlist {int ic_channels; } ;
struct afswtch {int dummy; } ;
typedef int chanlist ;


 int IEEE80211_CHAN_MAX ;
 int IEEE80211_IOC_CHANLIST ;
 int errx (int,char*,...) ;
 int free (char*) ;
 int isdigit (int) ;
 scalar_t__ isspace (int) ;
 char* malloc (scalar_t__) ;
 int memset (struct ieee80211req_chanlist*,int ,int) ;
 int set80211 (int,int ,int ,int,struct ieee80211req_chanlist*) ;
 int setbit (int ,int) ;
 int sscanf (char*,char*,int*,int*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
set80211chanlist(const char *val, int d, int s, const struct afswtch *rafp)
{
 struct ieee80211req_chanlist chanlist;
 char *temp, *cp, *tp;

 temp = malloc(strlen(val) + 1);
 if (temp == ((void*)0))
  errx(1, "malloc failed");
 strcpy(temp, val);
 memset(&chanlist, 0, sizeof(chanlist));
 cp = temp;
 for (;;) {
  int first, last, f, c;

  tp = strchr(cp, ',');
  if (tp != ((void*)0))
   *tp++ = '\0';
  switch (sscanf(cp, "%u-%u", &first, &last)) {
  case 1:
   if (first > IEEE80211_CHAN_MAX)
    errx(-1, "channel %u out of range, max %u",
     first, IEEE80211_CHAN_MAX);
   setbit(chanlist.ic_channels, first);
   break;
  case 2:
   if (first > IEEE80211_CHAN_MAX)
    errx(-1, "channel %u out of range, max %u",
     first, IEEE80211_CHAN_MAX);
   if (last > IEEE80211_CHAN_MAX)
    errx(-1, "channel %u out of range, max %u",
     last, IEEE80211_CHAN_MAX);
   if (first > last)
    errx(-1, "void channel range, %u > %u",
     first, last);
   for (f = first; f <= last; f++)
    setbit(chanlist.ic_channels, f);
   break;
  }
  if (tp == ((void*)0))
   break;
  c = *tp;
  while (isspace(c))
   tp++;
  if (!isdigit(c))
   break;
  cp = tp;
 }
 set80211(s, IEEE80211_IOC_CHANLIST, 0, sizeof(chanlist), &chanlist);
 free(temp);
}

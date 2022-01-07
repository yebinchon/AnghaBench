
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttinfo {size_t tt_isdst; size_t tt_abbrind; int tt_gmtoff; } ;
struct state {int typecnt; size_t* types; char* chars; int charcnt; struct ttinfo* ttis; } ;


 int GRANDPARENTED ;
 int TZ_ABBR_CHAR_SET ;
 char TZ_ABBR_ERR_CHAR ;
 scalar_t__ TZ_ABBR_MAX_LEN ;
 int altzone ;
 int daylight ;
 char* gmt ;
 struct state* lclptr ;
 int * strchr (int ,char) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strlen (char*) ;
 int timezone ;
 char** tzname ;
 char* wildabbr ;

__attribute__((used)) static void
settzname(void)
{
 struct state * sp = lclptr;
 int i;

 tzname[0] = wildabbr;
 tzname[1] = wildabbr;
 for (i = 0; i < sp->typecnt; ++i) {
  const struct ttinfo * const ttisp = &sp->ttis[sp->types[i]];

  tzname[ttisp->tt_isdst] =
   &sp->chars[ttisp->tt_abbrind];
 }




 for (i = 0; i < sp->charcnt; ++i)
  if (strchr(TZ_ABBR_CHAR_SET, sp->chars[i]) == ((void*)0))
   sp->chars[i] = TZ_ABBR_ERR_CHAR;



 for (i = 0; i < sp->typecnt; ++i) {
  register const struct ttinfo * const ttisp = &sp->ttis[i];
  register char * cp = &sp->chars[ttisp->tt_abbrind];

  if (strlen(cp) > TZ_ABBR_MAX_LEN &&
   strcmp(cp, GRANDPARENTED) != 0)
    *(cp + TZ_ABBR_MAX_LEN) = '\0';
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {scalar_t__ tm_isdst; } ;


 int MAX_STRING_LENGTH ;
 int TRUE ;
 int abbr (struct tm*) ;
 scalar_t__ delta (struct tm*,struct tm*) ;
 struct tm* my_localtime (scalar_t__*) ;
 int show (char*,scalar_t__,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strncpy (char*,int ,int) ;

__attribute__((used)) static time_t
hunt(char *name, time_t lot, time_t hit)
{
 time_t t;
 long diff;
 struct tm lotm;
 register struct tm * lotmp;
 struct tm tm;
 register struct tm * tmp;
 char loab[MAX_STRING_LENGTH];

 lotmp = my_localtime(&lot);
 if (lotmp != ((void*)0)) {
  lotm = *lotmp;
  (void) strncpy(loab, abbr(&lotm), (sizeof loab) - 1);
 }
 for ( ; ; ) {
  diff = (long) (hit - lot);
  if (diff < 2)
   break;
  t = lot;
  t += diff / 2;
  if (t <= lot)
   ++t;
  else if (t >= hit)
   --t;
  tmp = my_localtime(&t);
  if (tmp != ((void*)0))
   tm = *tmp;
  if ((lotmp == ((void*)0) || tmp == ((void*)0)) ? (lotmp == tmp) :
   (delta(&tm, &lotm) == (t - lot) &&
   tm.tm_isdst == lotm.tm_isdst &&
   strcmp(abbr(&tm), loab) == 0)) {
    lot = t;
    lotm = tm;
    lotmp = tmp;
  } else hit = t;
 }
 show(name, lot, TRUE);
 show(name, hit, TRUE);
 return hit;
}

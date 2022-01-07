
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tokens ;
typedef int time_t ;
struct token {int HaveZone; long Timezone; int HaveYear; int HaveMonth; int HaveDay; int HaveTime; int HaveWeekDay; long tm_hour; long tm_min; int DayNumber; int DayOrdinal; int DSTmode; int RelMonth; scalar_t__ RelSeconds; scalar_t__ tm_sec; int HaveRel; int Seconds; int Minutes; int Hour; scalar_t__ Year; int Day; scalar_t__ Month; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; struct token* tokenp; int value; int token; scalar_t__ tm_isdst; } ;
struct tm {int HaveZone; long Timezone; int HaveYear; int HaveMonth; int HaveDay; int HaveTime; int HaveWeekDay; long tm_hour; long tm_min; int DayNumber; int DayOrdinal; int DSTmode; int RelMonth; scalar_t__ RelSeconds; scalar_t__ tm_sec; int HaveRel; int Seconds; int Minutes; int Hour; scalar_t__ Year; int Day; scalar_t__ Month; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; struct tm* tokenp; int value; int token; scalar_t__ tm_isdst; } ;
struct gdstate {int HaveZone; long Timezone; int HaveYear; int HaveMonth; int HaveDay; int HaveTime; int HaveWeekDay; long tm_hour; long tm_min; int DayNumber; int DayOrdinal; int DSTmode; int RelMonth; scalar_t__ RelSeconds; scalar_t__ tm_sec; int HaveRel; int Seconds; int Minutes; int Hour; scalar_t__ Year; int Day; scalar_t__ Month; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; struct gdstate* tokenp; int value; int token; scalar_t__ tm_isdst; } ;
typedef int local ;
typedef int gmt ;
typedef int _gds ;


 int Convert (scalar_t__,int ,scalar_t__,int ,int ,int ,long,int ) ;
 int DSTmaybe ;
 long HOUR ;
 long MINUTE ;
 int RelativeDate (int,long,int ,int ,int ) ;
 scalar_t__ RelativeMonth (int,long,int ) ;
 long difftm (struct token*,struct token*) ;
 struct token* gmtime (int*) ;
 struct token* localtime (int*) ;
 int memset (struct token*,int ,int) ;
 int nexttoken (char const**,int *) ;
 int phrase (struct token*) ;

time_t
__archive_get_date(time_t now, const char *p)
{
 struct token tokens[256];
 struct gdstate _gds;
 struct token *lasttoken;
 struct gdstate *gds;
 struct tm local, *tm;
 struct tm gmt, *gmt_ptr;
 time_t Start;
 time_t tod;
 long tzone;


 memset(tokens, 0, sizeof(tokens));

 memset(&_gds, 0, sizeof(_gds));
 gds = &_gds;


 memset(&local, 0, sizeof(local));
 tm = localtime (&now);
 if (tm == ((void*)0))
  return -1;
 local = *tm;



 memset(&gmt, 0, sizeof(gmt));
 gmt_ptr = gmtime (&now);
 if (gmt_ptr != ((void*)0)) {

  gmt = *gmt_ptr;
 }
 if (gmt_ptr != ((void*)0))
  tzone = difftm (&gmt, &local);
 else

  tzone = 0;
 if(local.tm_isdst)
  tzone += HOUR;


 lasttoken = tokens;
 while ((lasttoken->token = nexttoken(&p, &lasttoken->value)) != 0) {
  ++lasttoken;
  if (lasttoken > tokens + 255)
   return -1;
 }
 gds->tokenp = tokens;


 while (gds->tokenp < lasttoken) {
  if (!phrase(gds))
   return -1;
 }


 if (!gds->HaveZone) {
  gds->Timezone = tzone;
  gds->DSTmode = DSTmaybe;
 }



 if (gds->HaveZone && gmt_ptr != ((void*)0)) {
  now -= gds->Timezone;
  gmt_ptr = gmtime (&now);
  if (gmt_ptr != ((void*)0))
   local = *gmt_ptr;
  now += gds->Timezone;
 }

 if (!gds->HaveYear)
  gds->Year = local.tm_year + 1900;
 if (!gds->HaveMonth)
  gds->Month = local.tm_mon + 1;
 if (!gds->HaveDay)
  gds->Day = local.tm_mday;





 if (gds->HaveTime > 1 || gds->HaveZone > 1 || gds->HaveWeekDay > 1
     || gds->HaveYear > 1 || gds->HaveMonth > 1 || gds->HaveDay > 1)
  return -1;



 if (gds->HaveYear || gds->HaveMonth || gds->HaveDay
     || gds->HaveTime || gds->HaveWeekDay) {
  Start = Convert(gds->Month, gds->Day, gds->Year,
      gds->Hour, gds->Minutes, gds->Seconds,
      gds->Timezone, gds->DSTmode);
  if (Start < 0)
   return -1;
 } else {
  Start = now;
  if (!gds->HaveRel)
   Start -= local.tm_hour * HOUR + local.tm_min * MINUTE
       + local.tm_sec;
 }


 Start += gds->RelSeconds;
 Start += RelativeMonth(Start, gds->Timezone, gds->RelMonth);


 if (gds->HaveWeekDay
     && !(gds->HaveYear || gds->HaveMonth || gds->HaveDay)) {
  tod = RelativeDate(Start, gds->Timezone,
      gds->DSTmode, gds->DayOrdinal, gds->DayNumber);
  Start += tod;
 }



 return Start == -1 ? 0 : Start;
}

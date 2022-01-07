
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef scalar_t__ time_t ;
struct tm {int tm_hour; int tm_min; } ;


 int memset (struct tm*,int ,int) ;
 int printf (char*,...) ;
 scalar_t__ sldns_mktime_from_utc (struct tm*) ;
 int sscanf (char const*,char*,int*,int*,...) ;
 char* strptime (char const*,char*,struct tm*) ;
 scalar_t__ verb ;

__attribute__((used)) static time_t
xml_convertdate(const char* str)
{
 time_t t = 0;
 struct tm tm;
 const char* s;


 s = str;
 if(s[0] == '-') s++;
 memset(&tm, 0, sizeof(tm));

 s = strptime(s, "%t%Y%t-%t%m%t-%t%d%tT%t%H%t:%t%M%t:%t%S%t", &tm);
 if(!s) {
  if(verb) printf("xml_convertdate parse failure %s\n", str);
  return 0;
 }

 if(*s == '.') {

  int frac = 0, n = 0;
  if(sscanf(s+1, "%d%n", &frac, &n) < 1) {
   if(verb) printf("xml_convertdate f failure %s\n", str);
   return 0;
  }

  s++;
  s+=n;
 }
 if(*s == 'Z' || *s == 'z') {

  s++;
 } else if(*s == '+' || *s == '-') {

  int hr = 0, mn = 0, n = 0;
  if(sscanf(s+1, "%d:%d%n", &hr, &mn, &n) < 2) {
   if(verb) printf("xml_convertdate tz failure %s\n", str);
   return 0;
  }
  if(*s == '+') {
   tm.tm_hour += hr;
   tm.tm_min += mn;
  } else {
   tm.tm_hour -= hr;
   tm.tm_min -= mn;
  }
  s++;
  s += n;
 }
 if(*s != 0) {


 }

 t = sldns_mktime_from_utc(&tm);
 if(t == (time_t)-1) {
  if(verb) printf("xml_convertdate mktime failure\n");
  return 0;
 }
 return t;
}

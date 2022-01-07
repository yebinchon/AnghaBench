
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; scalar_t__ tm_yday; scalar_t__ tm_isdst; void* tm_wday; } ;
typedef int FILE ;


 int COLON ;
 int NUMBER ;
 int SEMI ;
 int SLASH ;
 void* atoi (char*) ;
 int next_token (char**,int *) ;
 int parse_warn (char*) ;
 int skip_to_semi (int *) ;

time_t
parse_date(FILE *cfile)
{
 static int months[11] = { 31, 59, 90, 120, 151, 181,
     212, 243, 273, 304, 334 };
 int guess, token;
 struct tm tm;
 char *val;


 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("numeric day of week expected.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }
 tm.tm_wday = atoi(val);


 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("numeric year expected.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }
 tm.tm_year = atoi(val);
 if (tm.tm_year > 1900)
  tm.tm_year -= 1900;


 token = next_token(&val, cfile);
 if (token != SLASH) {
  parse_warn("expected slash separating year from month.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }


 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("numeric month expected.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }
 tm.tm_mon = atoi(val) - 1;


 token = next_token(&val, cfile);
 if (token != SLASH) {
  parse_warn("expected slash separating month from day.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }


 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("numeric day of month expected.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }
 tm.tm_mday = atoi(val);


 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("numeric hour expected.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }
 tm.tm_hour = atoi(val);


 token = next_token(&val, cfile);
 if (token != COLON) {
  parse_warn("expected colon separating hour from minute.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }


 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("numeric minute expected.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }
 tm.tm_min = atoi(val);


 token = next_token(&val, cfile);
 if (token != COLON) {
  parse_warn("expected colon separating hour from minute.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }


 token = next_token(&val, cfile);
 if (token != NUMBER) {
  parse_warn("numeric minute expected.");
  if (token != SEMI)
   skip_to_semi(cfile);
  return (0);
 }
 tm.tm_sec = atoi(val);
 tm.tm_isdst = 0;


 tm.tm_yday = 0;


 token = next_token(&val, cfile);
 if (token != SEMI) {
  parse_warn("semicolon expected.");
  skip_to_semi(cfile);
  return (0);
 }


 guess = ((((((365 * (tm.tm_year - 70) +
      (tm.tm_year - 69) / 4 +
      (tm.tm_mon
      ? months[tm.tm_mon - 1]
      : 0) +
      (tm.tm_mon > 1 &&
      !((tm.tm_year - 72) & 3)) +
      tm.tm_mday - 1) * 24) +
      tm.tm_hour) * 60) +
      tm.tm_min) * 60) + tm.tm_sec;
 return (guess);
}

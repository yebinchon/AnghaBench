
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t unit_type ;


 int ERANGE ;
 int FMT_SCALED_STRSIZE ;
 size_t NONE ;
 int SCALE_LENGTH ;
 int errno ;
 long long llabs (long long) ;
 int * scale_chars ;
 long long* scale_factors ;
 int snprintf (char*,int ,char*,long long,long long,...) ;
 int strlcpy (char*,char*,int ) ;
 size_t* units ;

int
fmt_scaled(long long number, char *result)
{
 long long abval, fract = 0;
 unsigned int i;
 unit_type unit = NONE;

 abval = llabs(number);




 if (abval < 0 || abval / 1024 >= scale_factors[SCALE_LENGTH-1]) {
  errno = ERANGE;
  return -1;
 }


 for (i = 0; i < SCALE_LENGTH; i++) {
  if (abval/1024 < scale_factors[i]) {
   unit = units[i];
   fract = (i == 0) ? 0 : abval % scale_factors[i];
   number /= scale_factors[i];
   if (i > 0)
    fract /= scale_factors[i - 1];
   break;
  }
 }

 fract = (10 * fract + 512) / 1024;

 if (fract >= 10) {
  if (number >= 0)
   number++;
  else
   number--;
  fract = 0;
 } else if (fract < 0) {

  fract = 0;
 }

 if (number == 0)
  strlcpy(result, "0B", FMT_SCALED_STRSIZE);
 else if (unit == NONE || number >= 100 || number <= -100) {
  if (fract >= 5) {
   if (number >= 0)
    number++;
   else
    number--;
  }
  (void)snprintf(result, FMT_SCALED_STRSIZE, "%lld%c",
   number, scale_chars[unit]);
 } else
  (void)snprintf(result, FMT_SCALED_STRSIZE, "%lld.%1lld%c",
   number, fract, scale_chars[unit]);

 return 0;
}

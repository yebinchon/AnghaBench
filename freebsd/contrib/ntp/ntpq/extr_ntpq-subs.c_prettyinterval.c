
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ floor (long) ;
 int snprintf (char*,size_t,char*,unsigned int) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static char *
prettyinterval(
 char *buf,
 size_t cb,
 long diff
 )
{
 if (diff <= 0) {
  buf[0] = '-';
  buf[1] = 0;
  return buf;
 }

 if (diff <= 2048) {
  snprintf(buf, cb, "%u", (unsigned int)diff);
  return buf;
 }

 diff = (diff + 29) / 60;
 if (diff <= 300) {
  snprintf(buf, cb, "%um", (unsigned int)diff);
  return buf;
 }

 diff = (diff + 29) / 60;
 if (diff <= 96) {
  snprintf(buf, cb, "%uh", (unsigned int)diff);
  return buf;
 }

 diff = (diff + 11) / 24;
 if (diff <= 999) {
  snprintf(buf, cb, "%ud", (unsigned int)diff);
  return buf;
 }


 diff = (long)floor(diff / 365.25 + 0.5);
 if (diff <= 999) {
  snprintf(buf, cb, "%uy", (unsigned int)diff);
  return buf;
 }

 strlcpy(buf, "INF", cb);
 return buf;
}

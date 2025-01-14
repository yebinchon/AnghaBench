
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int tm ;
typedef int time_t ;
struct tm {int dummy; } ;


 int memset (struct tm*,int ,int) ;
 int mktime (struct tm*) ;
 scalar_t__ parse_quote (char**,char*,char*,char*,int) ;
 int sprintf (char*,char*,char*) ;
 int strcat (char*,char*) ;
 char* strptime (char*,char*,struct tm*) ;

__attribute__((used)) static char *
parse_ts(time_t *tp,
  char **valp,
  char *val0,
  char *delimp,
  char *buf,
  u_int bufsize)
{
 struct tm tm;
 char *ptr;

 if (0 > parse_quote(valp, "| ,\n\r", delimp,
       buf,bufsize)
     || buf[bufsize-1] != '\0'
     || buf[bufsize-2] != '\0') {
  sprintf(buf,"bad timestamp %.25s", val0);
  return buf;
 }
 strcat(buf,"\n");
 memset(&tm, 0, sizeof(tm));
 ptr = strptime(buf, "%y/%m/%d@%H:%M\n", &tm);
 if (ptr == ((void*)0) || *ptr != '\0') {
  sprintf(buf,"bad timestamp %.25s", val0);
  return buf;
 }

 if ((*tp = mktime(&tm)) == -1) {
  sprintf(buf,"bad timestamp %.25s", val0);
  return buf;
 }

 return 0;
}

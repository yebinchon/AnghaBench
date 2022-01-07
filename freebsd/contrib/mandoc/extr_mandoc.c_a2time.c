
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;


 int memset (struct tm*,int ,int) ;
 int mktime (struct tm*) ;
 char* strptime (char const*,char const*,struct tm*) ;

__attribute__((used)) static int
a2time(time_t *t, const char *fmt, const char *p)
{
 struct tm tm;
 char *pp;

 memset(&tm, 0, sizeof(struct tm));

 pp = ((void*)0);



 if (((void*)0) != pp && '\0' == *pp) {
  *t = mktime(&tm);
  return 1;
 }

 return 0;
}

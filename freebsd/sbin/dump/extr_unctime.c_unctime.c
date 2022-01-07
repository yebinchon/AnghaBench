
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; } ;


 int mktime (struct tm*) ;
 char* strptime (char*,char*,struct tm*) ;

time_t
unctime(char *str)
{
 struct tm then;

 str = strptime(str, "%a %b %e %T %Y", &then);
 if (str == ((void*)0) || (*str != '\n' && *str != '\0'))
  return ((time_t)-1);
 then.tm_isdst = -1;
 return (mktime(&then));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* ctime (int const*) ;
 int strcpy (char*,char*) ;

char *ctime_r(const time_t *timep, char *buf)
{

 char* result = ctime(timep);
 if(buf && result)
  strcpy(buf, result);
 return result;
}

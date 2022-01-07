
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int gmtime (scalar_t__*) ;
 int snprintf (char*,size_t,char*) ;
 int strftime (char*,size_t,char*,int ) ;

void
time_t2str(time_t t, char *str, size_t len, int include_time)
{
    if(t) {
 if(include_time)
     strftime(str, len, "%Y-%m-%d %H:%M:%S UTC", gmtime(&t));
 else
     strftime(str, len, "%Y-%m-%d", gmtime(&t));
    } else
 snprintf(str, len, "never");
}

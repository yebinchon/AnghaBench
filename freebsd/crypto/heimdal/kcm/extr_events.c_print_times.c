
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;


 int gmtime (scalar_t__*) ;
 int strftime (char*,int,char*,int ) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
print_times(time_t time, char buf[64])
{
    if (time)
 strftime(buf, 64, "%m-%dT%H:%M", gmtime(&time));
    else
 strlcpy(buf, "never", 64);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_deltat ;


 int parse_time (char const*,char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

int
str2deltat(const char *str, krb5_deltat *delta)
{
    int res;

    if(strcasecmp(str, "unlimited") == 0) {
 *delta = 0;
 return 0;
    }
    res = parse_time(str, "day");
    if (res < 0)
 return res;
    else {
 *delta = res;
 return 0;
    }
}

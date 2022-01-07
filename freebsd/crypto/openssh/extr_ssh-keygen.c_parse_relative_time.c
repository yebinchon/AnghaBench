
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int time_t ;
typedef int int64_t ;


 int convtime (char const*) ;
 int fatal (char*,char const*) ;

__attribute__((used)) static u_int64_t
parse_relative_time(const char *s, time_t now)
{
 int64_t mul, secs;

 mul = *s == '-' ? -1 : 1;

 if ((secs = convtime(s + 1)) == -1)
  fatal("Invalid relative certificate time %s", s);
 if (mul == -1 && secs > now)
  fatal("Certificate time %s cannot be represented", s);
 return now + (u_int64_t)(secs * mul);
}

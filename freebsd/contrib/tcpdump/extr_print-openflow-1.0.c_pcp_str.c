
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;


 int snprintf (char*,int,char*,int const) ;

__attribute__((used)) static const char *
pcp_str(const uint8_t pcp)
{
 static char buf[sizeof("255 (bogus)")];
 snprintf(buf, sizeof(buf), pcp <= 7 ? "%u" : "%u (bogus)", pcp);
 return buf;
}

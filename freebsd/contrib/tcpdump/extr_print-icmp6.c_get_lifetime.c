
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;


 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
get_lifetime(uint32_t v)
{
 static char buf[20];

 if (v == (uint32_t)~0UL)
  return "infinity";
 else {
  snprintf(buf, sizeof(buf), "%us", v);
  return buf;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char const*) ;

__attribute__((used)) static const char *
bad_str(const char *estr)
{
 static char buf[100+8];

 sprintf(buf, "bad \"%.100s\"", estr);
 return buf;
}

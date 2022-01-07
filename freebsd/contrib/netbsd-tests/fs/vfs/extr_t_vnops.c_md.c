
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char const*,char const*) ;

__attribute__((used)) static char *
md(char *buf, size_t buflen, const char *base, const char *tail)
{

 snprintf(buf, buflen, "%s/%s", base, tail);
 return buf;
}

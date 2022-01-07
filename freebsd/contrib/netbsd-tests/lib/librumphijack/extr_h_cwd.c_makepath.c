
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* buf ;
 char* prefix ;
 int prefixlen ;
 int strcat (char const*,char const*) ;
 int strcpy (char const*,char*) ;

__attribute__((used)) static const char *
makepath(const char *tail)
{

 strcpy(buf, prefix);
 if (prefix[prefixlen-1] != '/')
  strcat(buf, "/");
 strcat(buf, tail);

 return buf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long strtonum (char const*,int ,int,char const**) ;

int
a2port(const char *s)
{
 long long port;
 const char *errstr;

 port = strtonum(s, 0, 65535, &errstr);
 if (errstr != ((void*)0))
  return -1;
 return (int)port;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*,char const*) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static u_long
id(const char *name, const char *type)
{
 u_long val;
 char *ep;





 errno = 0;
 val = strtoul(name, &ep, 10);
 if (errno)
  err(1, "%s", name);
 if (*ep != '\0')
  errx(1, "%s: illegal %s name", name, type);
 return (val);
}

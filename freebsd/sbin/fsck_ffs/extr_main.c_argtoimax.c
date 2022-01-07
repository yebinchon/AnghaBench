
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;


 int EEXIT ;
 int errx (int ,char*,int,char const*) ;
 int strtoimax (char const*,char**,int) ;

__attribute__((used)) static intmax_t
argtoimax(int flag, const char *req, const char *str, int base)
{
 char *cp;
 intmax_t ret;

 ret = strtoimax(str, &cp, base);
 if (cp == str || *cp)
  errx(EEXIT, "-%c flag requires a %s", flag, req);
 return (ret);
}

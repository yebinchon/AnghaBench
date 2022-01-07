
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 int testfunc (char**,char*,char*) ;

int
main(void)
{
 char *ret;

 if (testfunc(&ret, "%s.", "Text") != 5)
  return 1;
 if (strcmp(ret, "Text."))
  return 2;
 return 0;
}

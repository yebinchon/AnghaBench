
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int LC_CTYPE ;
 int * nls_lower ;
 int * nls_upper ;
 int * setlocale (int ,char const*) ;
 int tolower (int) ;
 int toupper (int) ;
 int warnx (char*,char const*) ;

int
nls_setlocale(const char *name)
{
 int i;

 if (setlocale(LC_CTYPE, name) == ((void*)0)) {
  warnx("can't set locale '%s'\n", name);
  return EINVAL;
 }
 for (i = 0; i < 256; i++) {
  nls_lower[i] = tolower(i);
  nls_upper[i] = toupper(i);
 }
 return 0;
}

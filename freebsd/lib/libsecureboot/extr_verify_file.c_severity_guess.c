
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VE_TRY ;
 int VE_WANT ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
severity_guess(const char *filename)
{
 const char *cp;


 if ((cp = strrchr(filename, '.'))) {
  if (strcmp(cp, ".conf") == 0 ||
      strcmp(cp, ".cookie") == 0 ||
   strcmp(cp, ".hints") == 0)
   return (VE_TRY);
 }
 return (VE_WANT);
}

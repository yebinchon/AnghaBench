
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
not_interesting_fname (const char *fname)
{
  static const char *illegal_aliens[] = {
    "_globals_",
    ((void*)0)
  };
  int i;

  for (i = 0; illegal_aliens[i]; i++)
    {
      if (strcmp (fname, illegal_aliens[i]) == 0)
 return 1;
    }
  return 0;
}

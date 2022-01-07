
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char*,char) ;

char *
sparc_stabs_unglobalize_name (char *name)
{
  if (name[0] == '$')
    {
      char *p = strrchr (name, '.');
      if (p)
 return p + 1;
    }

  return name;
}

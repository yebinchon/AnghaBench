
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lbasename (char*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
file_matches (char *file, char *files[], int nfiles)
{
  int i;

  if (file != ((void*)0) && nfiles != 0)
    {
      for (i = 0; i < nfiles; i++)
 {
   if (strcmp (files[i], lbasename (file)) == 0)
     return 1;
 }
    }
  else if (nfiles == 0)
    return 1;
  return 0;
}

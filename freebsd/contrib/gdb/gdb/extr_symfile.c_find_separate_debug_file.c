
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {char* name; } ;
typedef int bfd_size_type ;
typedef int asection ;


 char* DEBUG_SUBDIRECTORY ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 char* alloca (int) ;
 char* debug_file_directory ;
 int gdb_assert (int) ;
 char* get_debug_link_info (struct objfile*,unsigned long*) ;
 scalar_t__ separate_debug_file_exists (char*,unsigned long) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
find_separate_debug_file (struct objfile *objfile)
{
  asection *sect;
  char *basename;
  char *dir;
  char *debugfile;
  char *name_copy;
  bfd_size_type debuglink_size;
  unsigned long crc32;
  int i;

  basename = get_debug_link_info (objfile, &crc32);

  if (basename == ((void*)0))
    return ((void*)0);

  dir = xstrdup (objfile->name);





  for (i = strlen(dir) - 1; i >= 0; i--)
    {
      if (IS_DIR_SEPARATOR (dir[i]))
 break;
    }
  gdb_assert (i >= 0 && IS_DIR_SEPARATOR (dir[i]));
  dir[i+1] = '\0';

  debugfile = alloca (strlen (debug_file_directory) + 1
                      + strlen (dir)
                      + strlen (DEBUG_SUBDIRECTORY)
                      + strlen ("/")
                      + strlen (basename)
                      + 1);


  strcpy (debugfile, dir);
  strcat (debugfile, basename);

  if (separate_debug_file_exists (debugfile, crc32))
    {
      xfree (basename);
      xfree (dir);
      return xstrdup (debugfile);
    }


  strcpy (debugfile, dir);
  strcat (debugfile, DEBUG_SUBDIRECTORY);
  strcat (debugfile, "/");
  strcat (debugfile, basename);

  if (separate_debug_file_exists (debugfile, crc32))
    {
      xfree (basename);
      xfree (dir);
      return xstrdup (debugfile);
    }


  strcpy (debugfile, debug_file_directory);
  strcat (debugfile, "/");
  strcat (debugfile, dir);
  strcat (debugfile, basename);

  if (separate_debug_file_exists (debugfile, crc32))
    {
      xfree (basename);
      xfree (dir);
      return xstrdup (debugfile);
    }

  xfree (basename);
  xfree (dir);
  return ((void*)0);
}

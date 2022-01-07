
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 int SLASH_STRING ;
 char* alloca (size_t) ;
 char* concat (char*,char const*,char const*,...) ;
 char* gdb_realpath (char*) ;
 scalar_t__ isalpha (char) ;
 char* lbasename (char const*) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;
 int xfree (char*) ;
 char* xstrdup (char const*) ;

char *
xfullpath (const char *filename)
{
  const char *base_name = lbasename (filename);
  char *dir_name;
  char *real_path;
  char *result;



  if (base_name == filename)
    return xstrdup (filename);

  dir_name = alloca ((size_t) (base_name - filename + 2));



  strncpy (dir_name, filename, base_name - filename);
  dir_name[base_name - filename] = '\000';
  real_path = gdb_realpath (dir_name);
  if (IS_DIR_SEPARATOR (real_path[strlen (real_path) - 1]))
    result = concat (real_path, base_name, ((void*)0));
  else
    result = concat (real_path, SLASH_STRING, base_name, ((void*)0));

  xfree (real_path);
  return result;
}

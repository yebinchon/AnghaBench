
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ABSOLUTE_PATH (char*) ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 int O_RDONLY ;
 int TARGET_SO_FIND_AND_OPEN_SOLIB (char*,int ,char**) ;
 char* alloca (int) ;
 int * get_in_environ (int ,char*) ;
 int inferior_environ ;
 char* lbasename (char*) ;
 int open (char*,int ,int ) ;
 int openp (int *,int,char*,int ,int ,char**) ;
 char* solib_absolute_prefix ;
 int * solib_search_path ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 char* xstrdup (char*) ;

int
solib_open (char *in_pathname, char **found_pathname)
{
  int found_file = -1;
  char *temp_pathname = ((void*)0);
  char *p = in_pathname;

  while (*p && !IS_DIR_SEPARATOR (*p))
    p++;

  if (*p)
    {
      if (! IS_ABSOLUTE_PATH (in_pathname) || solib_absolute_prefix == ((void*)0))
        temp_pathname = in_pathname;
      else
 {
   int prefix_len = strlen (solib_absolute_prefix);


   while (prefix_len > 0
   && IS_DIR_SEPARATOR (solib_absolute_prefix[prefix_len - 1]))
     prefix_len--;


   temp_pathname = alloca (prefix_len + strlen (in_pathname) + 1);
   strncpy (temp_pathname, solib_absolute_prefix, prefix_len);
   temp_pathname[prefix_len] = '\0';
   strcat (temp_pathname, in_pathname);
 }


      found_file = open (temp_pathname, O_RDONLY, 0);
    }





  if (found_file < 0 && IS_ABSOLUTE_PATH (in_pathname))
    {

      while (!IS_DIR_SEPARATOR (*in_pathname))
        in_pathname++;


      while (IS_DIR_SEPARATOR (*in_pathname))
        in_pathname++;
    }


  if (found_file < 0 && solib_search_path != ((void*)0))
    found_file = openp (solib_search_path,
   1, in_pathname, O_RDONLY, 0, &temp_pathname);




  if (found_file < 0 && solib_search_path != ((void*)0))
    found_file = openp (solib_search_path,
                        1, lbasename (in_pathname), O_RDONLY, 0,
                        &temp_pathname);


  if (found_file < 0 && TARGET_SO_FIND_AND_OPEN_SOLIB != ((void*)0))
    found_file = TARGET_SO_FIND_AND_OPEN_SOLIB
                 (in_pathname, O_RDONLY, &temp_pathname);


  if (found_file < 0 && solib_absolute_prefix == ((void*)0))
    found_file = openp (get_in_environ (inferior_environ, "PATH"),
   1, in_pathname, O_RDONLY, 0, &temp_pathname);



  if (found_file < 0 && solib_absolute_prefix == ((void*)0))
    found_file = openp (get_in_environ (inferior_environ, "LD_LIBRARY_PATH"),
   1, in_pathname, O_RDONLY, 0, &temp_pathname);



  if (found_pathname != ((void*)0) && temp_pathname != ((void*)0))
    *found_pathname = xstrdup (temp_pathname);
  return found_file;
}

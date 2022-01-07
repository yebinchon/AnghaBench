
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIRNAME_SEPARATOR ;
 scalar_t__ IS_ABSOLUTE_PATH (char const*) ;
 scalar_t__ IS_DIR_SEPARATOR (char const) ;
 int O_BINARY ;
 char* SLASH_STRING ;
 char* alloca (int) ;
 char* concat (char*,char*,char*,int *) ;
 char* current_directory ;
 scalar_t__ is_regular_file (char const*) ;
 int open (char*,int,...) ;
 int strcat (char*,char const*) ;
 char* strchr (char const*,int ) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 int xfree (char*) ;
 char* xfullpath (char*) ;

int
openp (const char *path, int try_cwd_first, const char *string,
       int mode, int prot,
       char **filename_opened)
{
  int fd;
  char *filename;
  const char *p;
  const char *p1;
  int len;
  int alloclen;

  if (!path)
    path = ".";





  if (try_cwd_first || IS_ABSOLUTE_PATH (string))
    {
      int i;

      if (is_regular_file (string))
 {
   filename = alloca (strlen (string) + 1);
   strcpy (filename, string);
   fd = open (filename, mode, prot);
   if (fd >= 0)
     goto done;
 }
      else
 {
   filename = ((void*)0);
   fd = -1;
 }

      for (i = 0; string[i]; i++)
 if (IS_DIR_SEPARATOR (string[i]))
   goto done;
    }


  while (string[0] == '.' && IS_DIR_SEPARATOR (string[1]))
    string += 2;

  alloclen = strlen (path) + strlen (string) + 2;
  filename = alloca (alloclen);
  fd = -1;
  for (p = path; p; p = p1 ? p1 + 1 : 0)
    {
      p1 = strchr (p, DIRNAME_SEPARATOR);
      if (p1)
 len = p1 - p;
      else
 len = strlen (p);

      if (len == 4 && p[0] == '$' && p[1] == 'c'
   && p[2] == 'w' && p[3] == 'd')
 {

   int newlen;


   len = strlen (current_directory);
   newlen = len + strlen (string) + 2;
   if (newlen > alloclen)
     {
       alloclen = newlen;
       filename = alloca (alloclen);
     }
   strcpy (filename, current_directory);
 }
      else
 {

   strncpy (filename, p, len);
   filename[len] = 0;
 }


      while (len > 0 && IS_DIR_SEPARATOR (filename[len - 1]))
 filename[--len] = 0;

      strcat (filename + len, SLASH_STRING);
      strcat (filename, string);

      if (is_regular_file (filename))
      {
        fd = open (filename, mode);
        if (fd >= 0)
          break;
      }
    }

done:
  if (filename_opened)
    {





      if (fd < 0)
 *filename_opened = ((void*)0);
      else if (IS_ABSOLUTE_PATH (filename))
 *filename_opened = xfullpath (filename);
      else
 {


   char *f = concat (current_directory,
           IS_DIR_SEPARATOR (current_directory[strlen (current_directory) - 1])
         ? "" : SLASH_STRING,
         filename, ((void*)0));
   *filename_opened = xfullpath (f);
   xfree (f);
 }
    }

  return fd;
}

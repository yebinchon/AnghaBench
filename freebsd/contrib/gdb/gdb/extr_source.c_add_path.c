
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 char DIRNAME_SEPARATOR ;
 scalar_t__ IS_ABSOLUTE_PATH (char*) ;
 scalar_t__ IS_DIR_SEPARATOR (char) ;
 char* SLASH_STRING ;
 int S_IFDIR ;
 int S_IFMT ;
 char* concat (char*,char*,char*,...) ;
 char* current_directory ;
 int errno ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stderr ;
 int make_cleanup (int (*) (char*),char*) ;
 int print_sys_errmsg (char*,int) ;
 char* savestring (char*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,unsigned int) ;
 char* tilde_expand (char*) ;
 int warning (char*,char*) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

void
add_path (char *dirname, char **which_path, int parse_separators)
{
  char *old = *which_path;
  int prefix = 0;

  if (dirname == 0)
    return;

  dirname = xstrdup (dirname);
  make_cleanup (xfree, dirname);

  do
    {
      char *name = dirname;
      char *p;
      struct stat st;

      {
 char *separator = ((void*)0);
 char *space = ((void*)0);
 char *tab = ((void*)0);

 if (parse_separators)
   {
     separator = strchr (name, DIRNAME_SEPARATOR);
     space = strchr (name, ' ');
     tab = strchr (name, '\t');
   }

 if (separator == 0 && space == 0 && tab == 0)
   p = dirname = name + strlen (name);
 else
   {
     p = 0;
     if (separator != 0 && (p == 0 || separator < p))
       p = separator;
     if (space != 0 && (p == 0 || space < p))
       p = space;
     if (tab != 0 && (p == 0 || tab < p))
       p = tab;
     dirname = p + 1;
     while (*dirname == DIRNAME_SEPARATOR
     || *dirname == ' '
     || *dirname == '\t')
       ++dirname;
   }
      }

      if (!(IS_DIR_SEPARATOR (*name) && p <= name + 1)




   && IS_DIR_SEPARATOR (p[-1]))

 --p;
      *p = '\0';

      while (p > name && p[-1] == '.')
 {
   if (p - name == 1)
     {

       name = current_directory;
       goto append;
     }
   else if (p > name + 1 && IS_DIR_SEPARATOR (p[-2]))
     {
       if (p - name == 2)
  {

    *--p = '\0';
    goto append;
  }
       else
  {

    p -= 2;
    *p = '\0';
    continue;
  }
     }
   else
     break;
 }

      if (name[0] == '~')
 name = tilde_expand (name);




      else if (!IS_ABSOLUTE_PATH (name) && name[0] != '$')
 name = concat (current_directory, SLASH_STRING, name, ((void*)0));
      else
 name = savestring (name, p - name);
      make_cleanup (xfree, name);


      if (name[0] != '$')
 {
   if (stat (name, &st) < 0)
     {
       int save_errno = errno;
       fprintf_unfiltered (gdb_stderr, "Warning: ");
       print_sys_errmsg (name, save_errno);
     }
   else if ((st.st_mode & S_IFMT) != S_IFDIR)
     warning ("%s is not a directory.", name);
 }

    append:
      {
 unsigned int len = strlen (name);

 p = *which_path;
 while (1)
   {
     if (!strncmp (p, name, len)
  && (p[len] == '\0' || p[len] == DIRNAME_SEPARATOR))
       {

  if (p > *which_path)
    p--;
  if (prefix > p - *which_path)
    goto skip_dup;
  strcpy (p, &p[len + 1]);
       }
     p = strchr (p, DIRNAME_SEPARATOR);
     if (p != 0)
       ++p;
     else
       break;
   }
 if (p == 0)
   {
     char tinybuf[2];

     tinybuf[0] = DIRNAME_SEPARATOR;
     tinybuf[1] = '\0';



     if (prefix)
       {
  char *temp, c;

  c = old[prefix];
  old[prefix] = '\0';
  temp = concat (old, tinybuf, name, ((void*)0));
  old[prefix] = c;
  *which_path = concat (temp, "", &old[prefix], ((void*)0));
  prefix = strlen (temp);
  xfree (temp);
       }
     else
       {
  *which_path = concat (name, (old[0] ? tinybuf : old), old, ((void*)0));
  prefix = strlen (name);
       }
     xfree (old);
     old = *which_path;
   }
      }
    skip_dup:;
    }
  while (*dirname != '\0');
}

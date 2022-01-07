
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; size_t d_namlen; } ;
typedef int DIR ;


 int closedir (int *) ;
 char* el_calloc (size_t,int) ;
 int el_free (char*) ;
 char* el_realloc (char*,size_t) ;
 char* fn_tilde_expand (char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,size_t,char*,char*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 int strncpy (char*,char const*,size_t) ;
 char* strrchr (char const*,char) ;

char *
fn_filename_completion_function(const char *text, int state)
{
 static DIR *dir = ((void*)0);
 static char *filename = ((void*)0), *dirname = ((void*)0), *dirpath = ((void*)0);
 static size_t filename_len = 0;
 struct dirent *entry;
 char *temp;
 size_t len;

 if (state == 0 || dir == ((void*)0)) {
  temp = strrchr(text, '/');
  if (temp) {
   char *nptr;
   temp++;
   nptr = el_realloc(filename, (strlen(temp) + 1) *
       sizeof(*nptr));
   if (nptr == ((void*)0)) {
    el_free(filename);
    filename = ((void*)0);
    return ((void*)0);
   }
   filename = nptr;
   (void)strcpy(filename, temp);
   len = (size_t)(temp - text);

   nptr = el_realloc(dirname, (len + 1) *
       sizeof(*nptr));
   if (nptr == ((void*)0)) {
    el_free(dirname);
    dirname = ((void*)0);
    return ((void*)0);
   }
   dirname = nptr;
   (void)strncpy(dirname, text, len);
   dirname[len] = '\0';
  } else {
   el_free(filename);
   if (*text == 0)
    filename = ((void*)0);
   else {
    filename = strdup(text);
    if (filename == ((void*)0))
     return ((void*)0);
   }
   el_free(dirname);
   dirname = ((void*)0);
  }

  if (dir != ((void*)0)) {
   (void)closedir(dir);
   dir = ((void*)0);
  }



  el_free(dirpath);
  dirpath = ((void*)0);
  if (dirname == ((void*)0)) {
   if ((dirname = strdup("")) == ((void*)0))
    return ((void*)0);
   dirpath = strdup("./");
  } else if (*dirname == '~')
   dirpath = fn_tilde_expand(dirname);
  else
   dirpath = strdup(dirname);

  if (dirpath == ((void*)0))
   return ((void*)0);

  dir = opendir(dirpath);
  if (!dir)
   return ((void*)0);


  filename_len = filename ? strlen(filename) : 0;
 }


 while ((entry = readdir(dir)) != ((void*)0)) {

  if (entry->d_name[0] == '.' && (!entry->d_name[1]
      || (entry->d_name[1] == '.' && !entry->d_name[2])))
   continue;
  if (filename_len == 0)
   break;


  if (entry->d_name[0] == filename[0]



      && strlen(entry->d_name) >= filename_len

      && strncmp(entry->d_name, filename,
   filename_len) == 0)
   break;
 }

 if (entry) {




  len = strlen(entry->d_name);


  len = strlen(dirname) + len + 1;
  temp = el_calloc(len, sizeof(*temp));
  if (temp == ((void*)0))
   return ((void*)0);
  (void)snprintf(temp, len, "%s%s", dirname, entry->d_name);
 } else {
  (void)closedir(dir);
  dir = ((void*)0);
  temp = ((void*)0);
 }

 return temp;
}

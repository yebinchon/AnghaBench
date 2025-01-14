
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct dirent {char* d_name; size_t d_namlen; } ;
typedef int path ;
typedef int dir ;
struct TYPE_6__ {char** sl_str; } ;
typedef TYPE_1__ StringList ;
typedef int DIR ;


 unsigned char CC_ERROR ;
 unsigned char CC_REFRESH ;
 int MAXPATHLEN ;
 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 unsigned char complete_ambiguous (char*,int,TYPE_1__*) ;
 int el ;
 int el_insertstr (int ,char*) ;
 int free (char*) ;
 int ftp_sl_add (TYPE_1__*,char*) ;
 TYPE_1__* ftp_sl_init () ;
 char* ftp_strdup (char*) ;
 char* globulize (char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int sl_free (TYPE_1__*,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcmp (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static unsigned char
complete_local(char *word, int list)
{
 StringList *words;
 char dir[MAXPATHLEN];
 char *file;
 DIR *dd;
 struct dirent *dp;
 unsigned char rv;
 size_t len;

 if ((file = strrchr(word, '/')) == ((void*)0)) {
  dir[0] = '.';
  dir[1] = '\0';
  file = word;
 } else {
  if (file == word) {
   dir[0] = '/';
   dir[1] = '\0';
  } else
   (void)strlcpy(dir, word, file - word + 1);
  file++;
 }
 if (dir[0] == '~') {
  char *p;

  if ((p = globulize(dir)) == ((void*)0))
   return (CC_ERROR);
  (void)strlcpy(dir, p, sizeof(dir));
  free(p);
 }

 if ((dd = opendir(dir)) == ((void*)0))
  return (CC_ERROR);

 words = ftp_sl_init();
 len = strlen(file);

 for (dp = readdir(dd); dp != ((void*)0); dp = readdir(dd)) {
  if (!strcmp(dp->d_name, ".") || !strcmp(dp->d_name, ".."))
   continue;





  if (len > dp->d_namlen)
   continue;

  if (strncmp(file, dp->d_name, len) == 0) {
   char *tcp;

   tcp = ftp_strdup(dp->d_name);
   ftp_sl_add(words, tcp);
  }
 }
 closedir(dd);

 rv = complete_ambiguous(file, list, words);
 if (rv == CC_REFRESH) {
  struct stat sb;
  char path[MAXPATHLEN];

  (void)strlcpy(path, dir, sizeof(path));
  (void)strlcat(path, "/", sizeof(path));
  (void)strlcat(path, words->sl_str[0], sizeof(path));

  if (stat(path, &sb) >= 0) {
   char suffix[2] = " ";

   if (S_ISDIR(sb.st_mode))
    suffix[0] = '/';
   if (el_insertstr(el, suffix) == -1)
    rv = CC_ERROR;
  }
 }
 sl_free(words, 1);
 return (rv);
}

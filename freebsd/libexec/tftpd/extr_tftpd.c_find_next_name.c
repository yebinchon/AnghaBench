
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yyyymmdd ;
typedef int time_t ;
struct tm {int dummy; } ;


 int EACCESS ;
 int EEXIST ;
 int LOG_WARNING ;
 int MAXPATHLEN ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 struct tm* localtime (int *) ;
 int newfile_format ;
 int open (char*,int,int) ;
 int sprintf (char*,char*,char*,char*,int) ;
 size_t strftime (char*,int,int ,struct tm*) ;
 int strlen (char*) ;
 int syslog (int ,char*,int,...) ;
 int time (int *) ;

__attribute__((used)) static int
find_next_name(char *filename, int *fd)
{
 int i;
 time_t tval;
 size_t len;
 struct tm lt;
 char yyyymmdd[MAXPATHLEN];
 char newname[MAXPATHLEN];


 time(&tval);
 lt = *localtime(&tval);
 len = strftime(yyyymmdd, sizeof(yyyymmdd), newfile_format, &lt);
 if (len == 0) {
  syslog(LOG_WARNING,
   "Filename suffix too long (%d characters maximum)",
   MAXPATHLEN);
  return (EACCESS);
 }


 if (strlen(filename) > MAXPATHLEN - len - 5) {
  syslog(LOG_WARNING,
   "Filename too long (%zd characters, %zd maximum)",
   strlen(filename), MAXPATHLEN - len - 5);
  return (EACCESS);
 }


 for (i = 0; i < 100; i++) {
  sprintf(newname, "%s.%s.%02d", filename, yyyymmdd, i);
  *fd = open(newname,
      O_WRONLY | O_CREAT | O_EXCL,
      S_IRUSR | S_IWUSR | S_IRGRP |
      S_IWGRP | S_IROTH | S_IWOTH);
  if (*fd > 0)
   return 0;
 }

 return (EEXIST);
}

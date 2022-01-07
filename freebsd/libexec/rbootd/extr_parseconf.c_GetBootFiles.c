
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {int d_name; } ;
typedef int DIR ;


 int BootDir ;
 int ** BootFiles ;
 int C_MAXFILE ;
 int FreeStr (int *) ;
 int LOG_ERR ;
 int * NewStr (int ) ;
 int S_IFMT ;
 int S_IFREG ;
 int closedir (int *) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ stat (int ,struct stat*) ;
 int syslog (int ,char*,int ) ;

int
GetBootFiles(void)
{
 DIR *dfd;
 struct stat statb;
 struct dirent *dp;
 int i;




 for (i = 0; i < C_MAXFILE && BootFiles[i] != ((void*)0); i++) {
  FreeStr(BootFiles[i]);
  BootFiles[i] = ((void*)0);
 }




 if ((dfd = opendir(".")) == ((void*)0)) {
  syslog(LOG_ERR, "GetBootFiles: can't open directory (%s)\n",
         BootDir);
  return(0);
 }






 i = 0;
 for (dp = readdir(dfd); dp != ((void*)0); dp = readdir(dfd)) {
  if (stat(dp->d_name, &statb) < 0 ||
      (statb.st_mode & S_IFMT) != S_IFREG)
   continue;
  if (i == C_MAXFILE)
   syslog(LOG_ERR,
          "GetBootFiles: too many boot files (%s ignored)",
          dp->d_name);
  else if ((BootFiles[i] = NewStr(dp->d_name)) != ((void*)0))
   i++;
 }

 (void) closedir(dfd);

 if (i == 0)
  syslog(LOG_ERR, "GetBootFiles: no boot files (%s)\n", BootDir);

 return(i);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; scalar_t__ d_type; } ;
typedef int curfile ;
typedef int DIR ;


 scalar_t__ DT_REG ;
 scalar_t__ DT_UNKNOWN ;
 int PATH_MAX ;
 int PJDLOG_ASSERT (int ) ;
 int PJDLOG_VERIFY (int) ;
 int bzero (char*,size_t) ;
 int pjdlog_debug (int,char*,...) ;
 struct dirent* readdir (int *) ;
 int rewinddir (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlcpy (char*,char*,size_t) ;
 scalar_t__ trail_type (int *,char*) ;

void
trail_last(DIR *dirfp, char *filename, size_t filenamesize)
{
 char curfile[PATH_MAX];
 struct dirent *dp;

 PJDLOG_ASSERT(dirfp != ((void*)0));

 curfile[0] = '\0';

 rewinddir(dirfp);
 while ((dp = readdir(dirfp)) != ((void*)0)) {
  if (dp->d_name[0] < '0' || dp->d_name[0] > '9')
   continue;
  if (dp->d_type == DT_UNKNOWN)
   dp->d_type = trail_type(dirfp, dp->d_name);

  if (dp->d_type != DT_REG)
   continue;

  if (curfile[0] != '\0' && strcmp(dp->d_name, curfile) < 0)
   continue;
  PJDLOG_VERIFY(strlcpy(curfile, dp->d_name, sizeof(curfile)) <
      sizeof(curfile));
 }
 if (curfile[0] == '\0') {



  pjdlog_debug(1, "No trail files.");
  bzero(filename, filenamesize);
  return;
 }
 PJDLOG_VERIFY(strlcpy(filename, curfile, filenamesize) < filenamesize);
 pjdlog_debug(1, "Found the most recent trail file: \"%s\".", filename);
}

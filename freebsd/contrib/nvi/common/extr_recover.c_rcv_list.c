
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct stat {int st_mtime; } ;
struct dirent {char* d_name; } ;
struct TYPE_10__ {TYPE_1__* gp; } ;
struct TYPE_9__ {char* progname; } ;
typedef TYPE_2__ SCR ;
typedef int FILE ;
typedef int DIR ;


 scalar_t__ ENOENT ;



 int M_ERR ;
 int M_SYSERR ;
 int O_RECDIR ;
 char* O_STR (TYPE_2__*,int ) ;
 scalar_t__ chdir (char*) ;
 int closedir (int *) ;
 char* ctime (int *) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int file_lock (TYPE_2__*,int *,int ,int) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fstat (int ,struct stat*) ;
 int msgq_str (TYPE_2__*,int ,char*,char*) ;
 int * opendir (char*) ;
 scalar_t__ opts_empty (TYPE_2__*,int ,int ) ;
 int printf (char*,char*,...) ;
 int rcv_dlnread (TYPE_2__*,char**,char**,int *) ;
 struct dirent* readdir (int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int unlink (char*) ;

int
rcv_list(SCR *sp)
{
 struct dirent *dp;
 struct stat sb;
 DIR *dirp;
 FILE *fp;
 int found;
 char *p, *file, *path;
 char *dtype, *data;
 int st;


 if (opts_empty(sp, O_RECDIR, 0))
  return (1);
 p = O_STR(sp, O_RECDIR);
 if (chdir(p) || (dirp = opendir(".")) == ((void*)0)) {
  msgq_str(sp, M_SYSERR, p, "recdir: %s");
  return (1);
 }


 for (found = 0; (dp = readdir(dirp)) != ((void*)0);) {
  if (strncmp(dp->d_name, "recover.", 8))
   continue;


  if ((fp = fopen(dp->d_name, "r")) == ((void*)0))
   continue;

  switch (file_lock(sp, ((void*)0), fileno(fp), 1)) {
  case 130:







   break;
  case 129:
   break;
  case 128:

   (void)fclose(fp);
   continue;
  }


  for (file = ((void*)0), path = ((void*)0);
      file == ((void*)0) || path == ((void*)0);) {
   if ((st = rcv_dlnread(sp, &dtype, &data, fp))) {
    if (st == 1)
     msgq_str(sp, M_ERR, dp->d_name,
         "066|%s: malformed recovery file");
    goto next;
   }
   if (dtype == ((void*)0))
    continue;
   if (!strcmp(dtype, "file"))
    file = data;
   else if (!strcmp(dtype, "path"))
    path = data;
   else
    free(data);
  }
  errno = 0;
  if (stat(path, &sb) &&
      errno == ENOENT) {
   (void)unlink(dp->d_name);
   goto next;
  }


  (void)fstat(fileno(fp), &sb);
  (void)printf("%.24s: %s\n",
      ctime(&sb.st_mtime), file);
  found = 1;


next: (void)fclose(fp);
  if (file != ((void*)0))
   free(file);
  if (path != ((void*)0))
   free(path);
 }
 if (found == 0)
  (void)printf("%s: No files to recover\n", sp->gp->progname);
 (void)closedir(dirp);
 return (0);
}

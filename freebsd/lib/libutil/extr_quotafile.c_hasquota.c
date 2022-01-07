
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usrname ;
struct statfs {char* f_mntonname; } ;
struct fstab {char* fs_file; int fs_mntops; } ;
typedef int grpname ;


 int BUFSIZ ;
 size_t GRPQUOTA ;
 char* QUOTAFILENAME ;
 size_t USRQUOTA ;
 char** qfextension ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 scalar_t__ statfs (char*,struct statfs*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,int ) ;
 int strlcpy (char*,char*,int) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
hasquota(struct fstab *fs, int type, char *qfnamep, int qfbufsize)
{
 char *opt;
 char *cp;
 struct statfs sfb;
 char buf[BUFSIZ];
 static char initname, usrname[100], grpname[100];





 if (!initname) {
  (void)snprintf(usrname, sizeof(usrname), "%s%s",
      qfextension[USRQUOTA], QUOTAFILENAME);
  (void)snprintf(grpname, sizeof(grpname), "%s%s",
      qfextension[GRPQUOTA], QUOTAFILENAME);
  initname = 1;
 }
 strcpy(buf, fs->fs_mntops);
 for (opt = strtok(buf, ","); opt; opt = strtok(((void*)0), ",")) {
  if ((cp = strchr(opt, '=')))
   *cp++ = '\0';
  if (type == USRQUOTA && strcmp(opt, usrname) == 0)
   break;
  if (type == GRPQUOTA && strcmp(opt, grpname) == 0)
   break;
 }
 if (!opt)
  return (0);



 if (statfs(fs->fs_file, &sfb) != 0 ||
     strcmp(fs->fs_file, sfb.f_mntonname)) {
  return (0);
 }
 if (cp) {
  strlcpy(qfnamep, cp, qfbufsize);
 } else {
  (void)snprintf(qfnamep, qfbufsize, "%s/%s.%s", fs->fs_file,
      QUOTAFILENAME, qfextension[type]);
 }
 return (1);
}

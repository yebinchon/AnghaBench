
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uufsd {int d_bsize; int d_fd; char const* d_name; int d_mine; int * d_sbcsum; int * d_error; scalar_t__ d_ufs; scalar_t__ d_lcg; scalar_t__ d_inomax; scalar_t__ d_inomin; int * d_inoblock; scalar_t__ d_ccg; } ;
struct statfs {int f_mntfromname; } ;
struct stat {int st_mode; } ;
struct fstab {char* fs_spec; } ;
typedef int dev ;


 int ERROR (struct uufsd*,char*) ;
 int MAXPATHLEN ;
 int MINE_NAME ;
 int O_RDONLY ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 char* _PATH_DEV ;
 struct fstab* getfsfile (char const*) ;
 int open (char const*,int ) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int stat (char const*,struct stat*) ;
 scalar_t__ statfs (char const*,struct statfs*) ;
 char* strdup (char const*) ;
 int strlcpy (char*,int ,int) ;

int
ufs_disk_fillout_blank(struct uufsd *disk, const char *name)
{
 struct stat st;
 struct fstab *fs;
 struct statfs sfs;
 const char *oname;
 char dev[MAXPATHLEN];
 int fd, ret;

 ERROR(disk, ((void*)0));

 oname = name;
again: if ((ret = stat(name, &st)) < 0) {
  if (*name != '/') {
   snprintf(dev, sizeof(dev), "%s%s", _PATH_DEV, name);
   name = dev;
   goto again;
  }





  name = oname;
 }
 if (ret >= 0 && S_ISREG(st.st_mode)) {

  ;
 } else if (ret >= 0 && S_ISCHR(st.st_mode)) {

  ;
 } else if ((fs = getfsfile(name)) != ((void*)0)) {
  name = fs->fs_spec;
 } else if (ret >= 0 && S_ISDIR(st.st_mode)) {




  if (statfs(name, &sfs) < 0) {
   ERROR(disk, "could not find special device");
   return (-1);
  }
  strlcpy(dev, sfs.f_mntfromname, sizeof(dev));
  name = dev;
 } else {
  ERROR(disk, "could not find special device");
  return (-1);
 }
 fd = open(name, O_RDONLY);
 if (fd == -1) {
  ERROR(disk, "could not open special device");
  return (-1);
 }

 disk->d_bsize = 1;
 disk->d_ccg = 0;
 disk->d_fd = fd;
 disk->d_inoblock = ((void*)0);
 disk->d_inomin = 0;
 disk->d_inomax = 0;
 disk->d_lcg = 0;
 disk->d_mine = 0;
 disk->d_ufs = 0;
 disk->d_error = ((void*)0);
 disk->d_sbcsum = ((void*)0);

 if (oname != name) {
  name = strdup(name);
  if (name == ((void*)0)) {
   ERROR(disk, "could not allocate memory for disk name");
   return (-1);
  }
  disk->d_mine |= MINE_NAME;
 }
 disk->d_name = name;

 return (0);
}

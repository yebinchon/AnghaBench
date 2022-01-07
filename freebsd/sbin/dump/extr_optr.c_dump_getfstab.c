
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfstab {struct fstab* pf_fstab; } ;
struct fstab {int fs_vfstype; int fs_type; } ;


 char* FSTAB_RO ;
 char* FSTAB_RQ ;
 char* FSTAB_RW ;
 int SLIST_INSERT_HEAD (int *,struct pfstab*,int ) ;
 int _PATH_FSTAB ;
 struct fstab* allocfsent (struct fstab*) ;
 int endfsent () ;
 int errno ;
 struct fstab* getfsent () ;
 scalar_t__ malloc (int) ;
 int msg (char*,int ,int ) ;
 int pf_list ;
 int quit (char*,int ) ;
 scalar_t__ setfsent () ;
 scalar_t__ strcmp (int ,char*) ;
 int strerror (int ) ;
 int table ;

void
dump_getfstab(void)
{
 struct fstab *fs;
 struct pfstab *pf;

 if (setfsent() == 0) {
  msg("Can't open %s for dump table information: %s\n",
      _PATH_FSTAB, strerror(errno));
  return;
 }
 while ((fs = getfsent()) != ((void*)0)) {
  if ((strcmp(fs->fs_type, FSTAB_RW) &&
      strcmp(fs->fs_type, FSTAB_RO) &&
      strcmp(fs->fs_type, FSTAB_RQ)) ||
      strcmp(fs->fs_vfstype, "ufs"))
   continue;
  fs = allocfsent(fs);
  if ((pf = (struct pfstab *)malloc(sizeof (*pf))) == ((void*)0))
   quit("%s\n", strerror(errno));
  pf->pf_fstab = fs;
  SLIST_INSERT_HEAD(&table, pf, pf_list);
 }
 (void) endfsent();
}

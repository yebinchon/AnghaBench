
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statfs {char* f_mntonname; scalar_t__ f_type; } ;


 int MAXPATHLEN ;
 scalar_t__ MNTTYPE_ZFS ;
 int MNT_NOWAIT ;
 int fprintf (int ,char*,...) ;
 size_t getmntinfo (struct statfs**,int ) ;
 scalar_t__ jail_remove (int) ;
 int stderr ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 size_t strnlen (char*,int ) ;
 scalar_t__ unmount (char*,int ) ;

__attribute__((used)) static int
bectl_jail_cleanup(char *mountpoint, int jid)
{
 struct statfs *mntbuf;
 size_t i, searchlen, mntsize;

 if (jid >= 0 && jail_remove(jid) != 0) {
  fprintf(stderr, "unable to remove jail");
  return (1);
 }

 searchlen = strnlen(mountpoint, MAXPATHLEN);
 mntsize = getmntinfo(&mntbuf, MNT_NOWAIT);
 for (i = 0; i < mntsize; i++) {
  if (strncmp(mountpoint, mntbuf[i].f_mntonname, searchlen) == 0 &&
      mntbuf[i].f_type != MNTTYPE_ZFS) {

   if (unmount(mntbuf[i].f_mntonname, 0) != 0) {
    fprintf(stderr, "bectl jail: unable to unmount filesystem %s",
        mntbuf[i].f_mntonname);
    return (1);
   }
  }
 }

 return (0);
}

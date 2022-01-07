
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_gid; int st_uid; int st_mode; } ;


 int MSG_WARNING ;
 scalar_t__ chmod (char const*,int ) ;
 scalar_t__ lchown (char const*,int ,int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static void hs20_set_osu_access_permission(const char *osu_dir,
        const char *fname)
{
 struct stat statbuf;


 if (stat(osu_dir, &statbuf) < 0) {
  wpa_printf(MSG_WARNING, "Cannot stat the OSU directory %s",
      osu_dir);
  return;
 }

 if (chmod(fname, statbuf.st_mode) < 0) {
  wpa_printf(MSG_WARNING,
      "Cannot change the permissions for %s", fname);
  return;
 }

 if (lchown(fname, statbuf.st_uid, statbuf.st_gid) < 0) {
  wpa_printf(MSG_WARNING, "Cannot change the ownership for %s",
      fname);
 }
}

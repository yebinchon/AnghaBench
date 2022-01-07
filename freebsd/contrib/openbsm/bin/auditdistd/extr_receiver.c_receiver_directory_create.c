
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct passwd {int pw_gid; int pw_uid; } ;
struct TYPE_2__ {int adh_directory; } ;


 int ADIST_USER ;
 int EX_NOUSER ;
 int EX_OSFILE ;
 int LOG_ERR ;
 TYPE_1__* adhost ;
 int chown (int ,int ,int ) ;
 scalar_t__ errno ;
 int exit (int ) ;
 struct passwd* getpwnam (int ) ;
 int mkdir (int ,int) ;
 int pjdlog_errno (int ,char*,int ) ;
 int pjdlog_exit (int ,char*,int ) ;
 int pjdlog_exitx (int ,char*,int ) ;
 int rmdir (int ) ;

__attribute__((used)) static void
receiver_directory_create(void)
{
 struct passwd *pw;






 errno = 0;
 pw = getpwnam(ADIST_USER);
 if (pw == ((void*)0)) {
  if (errno != 0) {
   pjdlog_exit(EX_NOUSER,
       "Unable to find info about '%s' user", ADIST_USER);
  } else {
   pjdlog_exitx(EX_NOUSER, "User '%s' doesn't exist.",
       ADIST_USER);
  }
 }

 if (mkdir(adhost->adh_directory, 0700) == -1) {
  pjdlog_exit(EX_OSFILE, "Unable to create directory \"%s\"",
      adhost->adh_directory);
 }
 if (chown(adhost->adh_directory, pw->pw_uid, pw->pw_gid) == -1) {
  pjdlog_errno(LOG_ERR,
      "Unable to change owner of the directory \"%s\"",
      adhost->adh_directory);
  (void)rmdir(adhost->adh_directory);
  exit(EX_OSFILE);
 }
}

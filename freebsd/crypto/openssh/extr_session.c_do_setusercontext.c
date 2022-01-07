
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uidstr ;
typedef int u_int ;
struct passwd {scalar_t__ pw_uid; int pw_name; int pw_dir; int pw_gid; } ;
struct TYPE_2__ {char* chroot_directory; } ;


 int LOGIN_SETALL ;
 int LOGIN_SETENV ;
 int LOGIN_SETPATH ;
 int LOGIN_SETUMASK ;
 int LOGIN_SETUSER ;
 int endgrent () ;
 int errno ;
 int error (char*,int ) ;
 int exit (int) ;
 int fatal (char*,...) ;
 int free (char*) ;
 scalar_t__ geteuid () ;
 scalar_t__ getuid () ;
 int in_chroot ;
 scalar_t__ initgroups (int ,int ) ;
 int lc ;
 TYPE_1__ options ;
 char* percent_expand (char*,char*,int ,char*,int ,char*,char*,char*) ;
 int permanently_set_uid (struct passwd*) ;
 int perror (char*) ;
 scalar_t__ platform_privileged_uidswap () ;
 int platform_setusercontext (struct passwd*) ;
 int platform_setusercontext_post_groups (struct passwd*) ;
 int safely_chroot (char*,scalar_t__) ;
 scalar_t__ set_id (int ) ;
 scalar_t__ setgid (int ) ;
 scalar_t__ setlogin (int ) ;
 scalar_t__ setusercontext (int ,struct passwd*,scalar_t__,int) ;
 int snprintf (char*,int,char*,unsigned long long) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strerror (int ) ;
 char* tilde_expand_filename (char*,scalar_t__) ;

void
do_setusercontext(struct passwd *pw)
{
 char uidstr[32], *chroot_path, *tmp;

 platform_setusercontext(pw);

 if (platform_privileged_uidswap()) {







  if (setlogin(pw->pw_name) < 0)
   error("setlogin failed: %s", strerror(errno));
  if (setgid(pw->pw_gid) < 0) {
   perror("setgid");
   exit(1);
  }

  if (initgroups(pw->pw_name, pw->pw_gid) < 0) {
   perror("initgroups");
   exit(1);
  }
  endgrent();


  platform_setusercontext_post_groups(pw);

  if (!in_chroot && options.chroot_directory != ((void*)0) &&
      strcasecmp(options.chroot_directory, "none") != 0) {
                        tmp = tilde_expand_filename(options.chroot_directory,
       pw->pw_uid);
   snprintf(uidstr, sizeof(uidstr), "%llu",
       (unsigned long long)pw->pw_uid);
   chroot_path = percent_expand(tmp, "h", pw->pw_dir,
       "u", pw->pw_name, "U", uidstr, (char *)((void*)0));
   safely_chroot(chroot_path, pw->pw_uid);
   free(tmp);
   free(chroot_path);

   free(options.chroot_directory);
   options.chroot_directory = ((void*)0);
   in_chroot = 1;
  }
  permanently_set_uid(pw);

 } else if (options.chroot_directory != ((void*)0) &&
     strcasecmp(options.chroot_directory, "none") != 0) {
  fatal("server lacks privileges to chroot to ChrootDirectory");
 }

 if (getuid() != pw->pw_uid || geteuid() != pw->pw_uid)
  fatal("Failed to set uids to %u.", (u_int) pw->pw_uid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint64_t ;
typedef int trail_size ;
struct stat {char st_size; int st_mode; } ;
struct TYPE_2__ {char* adh_trail_name; int adh_remote; int adh_directory; int adh_trail_dirfd; int * adh_trail_dirfp; } ;


 int AT_SYMLINK_NOFOLLOW ;
 int EX_CONFIG ;
 int EX_TEMPFAIL ;
 int PJDLOG_ASSERT (int ) ;
 int S_ISREG (int ) ;
 TYPE_1__* adhost ;
 int fstatat (int ,char*,struct stat*,int ) ;
 char htole64 (char) ;
 int pjdlog_exit (int ,char*,...) ;
 int pjdlog_exitx (int ,char*,int ,char*) ;
 int proto_send (int ,char*,int) ;
 int trail_last (int *,char*,int) ;

__attribute__((used)) static void
receiver_connect(void)
{
 uint64_t trail_size;
 struct stat sb;

 PJDLOG_ASSERT(adhost->adh_trail_dirfp != ((void*)0));

 trail_last(adhost->adh_trail_dirfp, adhost->adh_trail_name,
     sizeof(adhost->adh_trail_name));

 if (adhost->adh_trail_name[0] == '\0') {
  trail_size = 0;
 } else {
  if (fstatat(adhost->adh_trail_dirfd, adhost->adh_trail_name,
      &sb, AT_SYMLINK_NOFOLLOW) == -1) {
   pjdlog_exit(EX_CONFIG, "Unable to stat \"%s/%s\"",
       adhost->adh_directory, adhost->adh_trail_name);
  }
  if (!S_ISREG(sb.st_mode)) {
   pjdlog_exitx(EX_CONFIG,
       "File \"%s/%s\" is not a regular file.",
       adhost->adh_directory, adhost->adh_trail_name);
  }
  trail_size = sb.st_size;
 }
 trail_size = htole64(trail_size);
 if (proto_send(adhost->adh_remote, &trail_size,
     sizeof(trail_size)) == -1) {
  pjdlog_exit(EX_TEMPFAIL,
      "Unable to send size of the most recent trail file");
 }
 if (proto_send(adhost->adh_remote, adhost->adh_trail_name,
     sizeof(adhost->adh_trail_name)) == -1) {
  pjdlog_exit(EX_TEMPFAIL,
      "Unable to send name of the most recent trail file");
 }
}

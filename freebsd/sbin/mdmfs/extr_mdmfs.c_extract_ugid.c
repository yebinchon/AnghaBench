
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; } ;
struct mtpt_info {scalar_t__ mi_uid; scalar_t__ mi_gid; int mi_have_uid; int mi_have_gid; } ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;


 scalar_t__ ULONG_MAX ;
 int assert (int ) ;
 int errx (int,char*,char*) ;
 int free (char*) ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtoul (char*,char**,int) ;
 int usage () ;

__attribute__((used)) static void
extract_ugid(const char *str, struct mtpt_info *mip)
{
 char *ug;
 char *user, *group;
 struct passwd *pw;
 struct group *gr;
 char *p;
 uid_t *uid;
 gid_t *gid;

 uid = &mip->mi_uid;
 gid = &mip->mi_gid;
 mip->mi_have_uid = mip->mi_have_gid = 0;


 ug = strdup(str);
 assert(ug != ((void*)0));
 group = ug;
 user = strsep(&group, ":");
 if (user == ((void*)0) || group == ((void*)0) || *user == '\0' || *group == '\0')
  usage();


 *uid = strtoul(user, &p, 10);
 if (*uid == (uid_t)ULONG_MAX)
  usage();
 if (*p != '\0') {
  pw = getpwnam(user);
  if (pw == ((void*)0))
   errx(1, "invalid user: %s", user);
  *uid = pw->pw_uid;
 }
 mip->mi_have_uid = 1;


 *gid = strtoul(group, &p, 10);
 if (*gid == (gid_t)ULONG_MAX)
  usage();
 if (*p != '\0') {
  gr = getgrnam(group);
  if (gr == ((void*)0))
   errx(1, "invalid group: %s", group);
  *gid = gr->gr_gid;
 }
 mip->mi_have_gid = 1;

 free(ug);
}

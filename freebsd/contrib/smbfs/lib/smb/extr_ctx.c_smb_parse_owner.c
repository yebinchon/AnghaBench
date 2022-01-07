
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;
struct group {int gr_gid; } ;
typedef int gid_t ;


 int endpwent () ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 int smb_error (char*,int ,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
smb_parse_owner(char *pair, uid_t *uid, gid_t *gid)
{
 struct group *gr;
 struct passwd *pw;
 char *cp;

 cp = strchr(pair, ':');
 if (cp) {
  *cp++ = '\0';
  if (*cp) {
   gr = getgrnam(cp);
   if (gr) {
    *gid = gr->gr_gid;
   } else
    smb_error("Invalid group name %s, ignored",
        0, cp);
  }
 }
 if (*pair) {
  pw = getpwnam(pair);
  if (pw) {
   *uid = pw->pw_uid;
  } else
   smb_error("Invalid user name %s, ignored", 0, pair);
 }
 endpwent();
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_gid; int pw_uid; } ;
typedef int gid_t ;


 int USER ;
 struct passwd* getpwnam (int ) ;

__attribute__((used)) static int getuser(uid_t *uid, gid_t *gid)
{
 struct passwd *pw;

 if ((pw = getpwnam(USER)) == ((void*)0))
  return -1;

 *uid = pw->pw_uid;
 *gid = pw->pw_gid;

 return 0;
}

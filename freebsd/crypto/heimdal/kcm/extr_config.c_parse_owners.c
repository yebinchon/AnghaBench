
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {int pw_gid; int pw_uid; int pw_name; } ;
struct group {int gr_gid; } ;
typedef TYPE_1__* kcm_ccache ;
typedef int gid_t ;
struct TYPE_3__ {int gid; int uid; } ;


 int ENOMEM ;
 int atoi (scalar_t__*) ;
 int errno ;
 struct group* getgrgid (int ) ;
 struct group* getgrnam (scalar_t__*) ;
 struct passwd* getpwnam (scalar_t__*) ;
 struct passwd* getpwuid (int ) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__* strdup (int ) ;
 scalar_t__* system_group ;
 scalar_t__* system_user ;

__attribute__((used)) static int parse_owners(kcm_ccache ccache)
{
    uid_t uid = 0;
    gid_t gid = 0;
    struct passwd *pw;
    struct group *gr;
    int uid_p = 0;
    int gid_p = 0;

    if (system_user != ((void*)0)) {
 if (isdigit((unsigned char)system_user[0])) {
     pw = getpwuid(atoi(system_user));
 } else {
     pw = getpwnam(system_user);
 }
 if (pw == ((void*)0)) {
     return errno;
 }

 system_user = strdup(pw->pw_name);
 if (system_user == ((void*)0)) {
     return ENOMEM;
 }

 uid = pw->pw_uid; uid_p = 1;
 gid = pw->pw_gid; gid_p = 1;
    }

    if (system_group != ((void*)0)) {
 if (isdigit((unsigned char)system_group[0])) {
     gr = getgrgid(atoi(system_group));
 } else {
     gr = getgrnam(system_group);
 }
 if (gr == ((void*)0)) {
     return errno;
 }

 gid = gr->gr_gid; gid_p = 1;
    }

    if (uid_p)
 ccache->uid = uid;
    else
 ccache->uid = 0;

    if (gid_p)
 ccache->gid = gid;
    else
 ccache->gid = 0;

    return 0;
}

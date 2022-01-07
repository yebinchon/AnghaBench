
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_passwd; char* pw_name; scalar_t__ pw_uid; } ;
typedef int pw_buf ;
typedef int prompt ;


 int GROUP_NOT_MEMBER ;
 int LOG_AUTH ;
 int LOG_ERR ;
 int ROOT_GROUP ;
 int UI_UTIL_read_pw_string (char*,int,char*,int ) ;
 char* crypt (char*,char*) ;
 int exit (int ) ;
 int group_member_p (int ,char*) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int syslog (int,char*,char*,char*,...) ;

__attribute__((used)) static int
verify_unix(struct passwd *login, struct passwd *su)
{
    char prompt[128];
    char pw_buf[1024];
    char *pw;
    int r;
    if(su->pw_passwd != ((void*)0) && *su->pw_passwd != '\0') {
 snprintf(prompt, sizeof(prompt), "%s's password: ", su->pw_name);
 r = UI_UTIL_read_pw_string(pw_buf, sizeof(pw_buf), prompt, 0);
 if(r != 0)
     exit(0);
 pw = crypt(pw_buf, su->pw_passwd);
 memset(pw_buf, 0, sizeof(pw_buf));
 if(strcmp(pw, su->pw_passwd) != 0) {
     syslog (LOG_ERR | LOG_AUTH, "%s to %s: incorrect password",
      login->pw_name, su->pw_name);
     return 1;
 }
    }



    if(su->pw_uid == 0) {



 int gs = group_member_p("wheel", login->pw_name);
 if(gs == GROUP_NOT_MEMBER) {
     syslog (LOG_ERR | LOG_AUTH, "%s to %s: not in group %s",
      login->pw_name, su->pw_name, "wheel");
     return 1;
 }
 return 0;
    }
    return 0;
}

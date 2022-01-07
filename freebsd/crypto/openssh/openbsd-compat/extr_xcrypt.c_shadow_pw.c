
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spwd {char* sp_pwdp; } ;
struct TYPE_2__ {char* fd_encrypt; } ;
struct pr_passwd {TYPE_1__ ufld; } ;
struct passwd_adjunct {char* pwa_passwd; } ;
struct passwd {char* pw_passwd; int pw_name; } ;


 char* get_iaf_password (struct passwd*) ;
 struct pr_passwd* getprpwnam (int ) ;
 struct passwd_adjunct* getpwanam (int ) ;
 struct spwd* getspnam (int ) ;
 scalar_t__ issecure () ;

char *
shadow_pw(struct passwd *pw)
{
 char *pw_password = pw->pw_passwd;
 return pw_password;
}

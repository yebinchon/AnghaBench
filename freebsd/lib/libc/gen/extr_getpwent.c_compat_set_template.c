
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_fields; int * pw_shell; int * pw_dir; int * pw_gecos; int pw_gid; int pw_uid; int * pw_passwd; } ;


 int LOG_ERR ;
 int _PWF_DIR ;
 int _PWF_GECOS ;
 int _PWF_GID ;
 int _PWF_PASSWD ;
 int _PWF_SHELL ;
 int _PWF_UID ;
 int compat_clear_template (struct passwd*) ;
 void* strdup (int *) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int
compat_set_template(struct passwd *src, struct passwd *template)
{

 compat_clear_template(template);





 if (src->pw_fields & _PWF_UID)
  template->pw_uid = src->pw_uid;
 if (src->pw_fields & _PWF_GID)
  template->pw_gid = src->pw_gid;
 if ((src->pw_fields & _PWF_GECOS) &&
     (template->pw_gecos = strdup(src->pw_gecos)) == ((void*)0))
  goto enomem;
 if ((src->pw_fields & _PWF_DIR) &&
     (template->pw_dir = strdup(src->pw_dir)) == ((void*)0))
  goto enomem;
 if ((src->pw_fields & _PWF_SHELL) &&
     (template->pw_shell = strdup(src->pw_shell)) == ((void*)0))
  goto enomem;
 template->pw_fields = src->pw_fields;
 return (0);
enomem:
 syslog(LOG_ERR, "getpwent memory allocation failure");
 return (-1);
}

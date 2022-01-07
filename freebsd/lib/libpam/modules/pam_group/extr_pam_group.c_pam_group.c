
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int pw_name; } ;
struct group {char** gr_mem; scalar_t__ gr_gid; } ;
typedef int pam_handle_t ;


 int PAM_AUTH_ERR ;
 int PAM_IGNORE ;
 int PAM_LOG_ERROR ;
 int PAM_LOG_NOTICE ;
 int PAM_RUSER ;
 int PAM_SERVICE_ERR ;
 scalar_t__ PAM_SUCCESS ;
 struct group* getgrnam (char const*) ;
 struct passwd* getpwnam (void const*) ;
 char* openpam_get_option (int *,char*) ;
 int openpam_log (int ,char*) ;
 scalar_t__ pam_get_item (int *,int ,void const**) ;
 scalar_t__ pam_get_user (int *,char const**,int *) ;
 scalar_t__ strcmp (char* const,int ) ;

__attribute__((used)) static int
pam_group(pam_handle_t *pamh)
{
 int local, remote;
 const char *group, *user;
 const void *ruser;
 char *const *list;
 struct passwd *pwd;
 struct group *grp;


 if (pam_get_user(pamh, &user, ((void*)0)) != PAM_SUCCESS ||
     user == ((void*)0) || (pwd = getpwnam(user)) == ((void*)0))
  return (PAM_AUTH_ERR);
 if (pwd->pw_uid != 0 && openpam_get_option(pamh, "root_only"))
  return (PAM_IGNORE);


 local = openpam_get_option(pamh, "luser") ? 1 : 0;
 remote = openpam_get_option(pamh, "ruser") ? 1 : 0;
 if (local && remote) {
  openpam_log(PAM_LOG_ERROR, "(pam_group) "
      "the luser and ruser options are mutually exclusive");
  return (PAM_SERVICE_ERR);
 } else if (local) {

 } else {
  if (!remote)
   openpam_log(PAM_LOG_NOTICE, "(pam_group) "
       "neither luser nor ruser specified, assuming ruser");

  if (pam_get_item(pamh, PAM_RUSER, &ruser) != PAM_SUCCESS ||
      ruser == ((void*)0) || (pwd = getpwnam(ruser)) == ((void*)0))
   return (PAM_AUTH_ERR);
 }


 if ((group = openpam_get_option(pamh, "group")) == ((void*)0))
  group = "wheel";
 if ((grp = getgrnam(group)) == ((void*)0) || grp->gr_mem == ((void*)0))
  goto failed;


 if (pwd->pw_gid == grp->gr_gid)
  goto found;


 for (list = grp->gr_mem; list != ((void*)0) && *list != ((void*)0); ++list)
  if (strcmp(*list, pwd->pw_name) == 0)
   goto found;

 not_found:
 if (openpam_get_option(pamh, "deny"))
  return (PAM_SUCCESS);
 return (PAM_AUTH_ERR);
 found:
 if (openpam_get_option(pamh, "deny"))
  return (PAM_AUTH_ERR);
 return (PAM_SUCCESS);
 failed:
 if (openpam_get_option(pamh, "fail_safe"))
  goto found;
 else
  goto not_found;
}

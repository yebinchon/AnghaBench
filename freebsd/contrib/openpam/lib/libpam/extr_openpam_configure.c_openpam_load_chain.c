
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;
typedef size_t pam_facility_t ;
typedef scalar_t__ openpam_style_t ;


 scalar_t__ ENAMETOOLONG ;
 scalar_t__ ENOENT ;
 int ENTERS (char*) ;
 int PATH_MAX ;
 int RETURNN (int) ;
 scalar_t__ errno ;
 int openpam_load_file (int *,char const*,size_t,char const*,scalar_t__) ;
 char** openpam_policy_path ;
 scalar_t__ pam_conf_style ;
 scalar_t__ pam_d_style ;
 char** pam_facility_name ;
 int * strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlcat (char*,char const*,int) ;
 size_t strlcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
openpam_load_chain(pam_handle_t *pamh,
 const char *service,
 pam_facility_t facility)
{
 const char *p, **path;
 char filename[PATH_MAX];
 size_t len;
 openpam_style_t style;
 int ret;

 ENTERS(facility < 0 ? "any" : pam_facility_name[facility]);


 if (strchr(service, '/') != ((void*)0)) {
  if ((p = strrchr(service, '.')) != ((void*)0) && strcmp(p, ".conf") == 0)
   style = pam_conf_style;
  else
   style = pam_d_style;
  ret = openpam_load_file(pamh, service, facility,
      service, style);
  RETURNN(ret);
 }


 for (path = openpam_policy_path; *path != ((void*)0); ++path) {

  len = strlcpy(filename, *path, sizeof filename);
  if (len >= sizeof filename) {
   errno = ENAMETOOLONG;
   RETURNN(-1);
  }
  if (filename[len - 1] == '/') {
   len = strlcat(filename, service, sizeof filename);
   if (len >= sizeof filename) {
    errno = ENAMETOOLONG;
    RETURNN(-1);
   }
   style = pam_d_style;
  } else {
   style = pam_conf_style;
  }
  ret = openpam_load_file(pamh, service, facility,
      filename, style);

  if (ret > 0)
   RETURNN(ret);

  if (ret == -1 && errno != ENOENT)
   RETURNN(ret);

  if (ret == 0 && style == pam_d_style)
   RETURNN(ret);
 }


 errno = ENOENT;
 RETURNN(-1);
}

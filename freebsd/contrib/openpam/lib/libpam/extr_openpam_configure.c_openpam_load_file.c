
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_handle_t ;
typedef int pam_facility_t ;
typedef int openpam_style_t ;
typedef int FILE ;


 int ENOENT ;
 scalar_t__ OPENPAM_FEATURE (int ) ;
 int PAM_LOG_DEBUG ;
 int PAM_LOG_ERROR ;
 int RETURNN (int) ;
 int VERIFY_POLICY_FILE ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ openpam_check_desc_owner_perms (char const*,int ) ;
 int openpam_log (int ,char*,char const*) ;
 int openpam_parse_chain (int *,char const*,int ,int *,char const*,int ) ;

__attribute__((used)) static int
openpam_load_file(pam_handle_t *pamh,
 const char *service,
 pam_facility_t facility,
 const char *filename,
 openpam_style_t style)
{
 FILE *f;
 int ret, serrno;


 if ((f = fopen(filename, "r")) == ((void*)0)) {
  serrno = errno;
  openpam_log(errno == ENOENT ? PAM_LOG_DEBUG : PAM_LOG_ERROR,
      "%s: %m", filename);
  errno = serrno;
  RETURNN(-1);
 } else {
  openpam_log(PAM_LOG_DEBUG, "found %s", filename);
 }


 if (OPENPAM_FEATURE(VERIFY_POLICY_FILE) &&
     openpam_check_desc_owner_perms(filename, fileno(f)) != 0) {

  serrno = errno;
  fclose(f);
  errno = serrno;
  RETURNN(-1);
 }


 ret = openpam_parse_chain(pamh, service, facility,
     f, filename, style);
 RETURNN(ret);
}

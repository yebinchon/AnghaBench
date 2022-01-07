
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** chains; } ;
typedef TYPE_1__ pam_handle_t ;
typedef size_t pam_facility_t ;


 int ENOENT ;
 int ENTERS (char const*) ;
 int FALLBACK_TO_OTHER ;
 scalar_t__ OPENPAM_FEATURE (int ) ;
 size_t PAM_FACILITY_ANY ;
 int PAM_LOG_ERROR ;
 size_t PAM_NUM_FACILITIES ;
 char const* PAM_OTHER ;
 int PAM_SUCCESS ;
 int PAM_SYSTEM_ERR ;
 int RETURNC (int ) ;
 int errno ;
 int openpam_clear_chains (int **) ;
 scalar_t__ openpam_load_chain (TYPE_1__*,char const*,size_t) ;
 int openpam_log (int ,char*) ;
 int valid_service_name (char const*) ;

int
openpam_configure(pam_handle_t *pamh,
 const char *service)
{
 pam_facility_t fclt;
 int serrno;

 ENTERS(service);
 if (!valid_service_name(service)) {
  openpam_log(PAM_LOG_ERROR, "invalid service name");
  RETURNC(PAM_SYSTEM_ERR);
 }
 if (openpam_load_chain(pamh, service, PAM_FACILITY_ANY) < 0) {
  if (errno != ENOENT)
   goto load_err;
 }
 for (fclt = 0; fclt < PAM_NUM_FACILITIES; ++fclt) {
  if (pamh->chains[fclt] != ((void*)0))
   continue;
  if (OPENPAM_FEATURE(FALLBACK_TO_OTHER)) {
   if (openpam_load_chain(pamh, PAM_OTHER, fclt) < 0)
    goto load_err;
  }
 }
 RETURNC(PAM_SUCCESS);
load_err:
 serrno = errno;
 openpam_clear_chains(pamh->chains);
 errno = serrno;
 RETURNC(PAM_SYSTEM_ERR);
}

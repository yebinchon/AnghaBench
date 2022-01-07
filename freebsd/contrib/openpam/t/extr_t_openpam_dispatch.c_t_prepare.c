
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPENPAM_FALLBACK_TO_OTHER ;
 int OPENPAM_RESTRICT_MODULE_NAME ;
 int OPENPAM_RESTRICT_SERVICE_NAME ;
 int OPENPAM_VERIFY_MODULE_FILE ;
 int OPENPAM_VERIFY_POLICY_FILE ;
 int T (int ) ;
 int empty_policy ;
 int * getenv (char*) ;
 int mod_return ;
 int openpam_set_feature (int ,int ) ;
 int * pam_return_so ;
 int t_printv (char*) ;

__attribute__((used)) static int
t_prepare(int argc, char *argv[])
{

 (void)argc;
 (void)argv;

 if ((pam_return_so = getenv("PAM_RETURN_SO")) == ((void*)0)) {
  t_printv("define PAM_RETURN_SO before running these tests\n");
  return (0);
 }

 openpam_set_feature(OPENPAM_RESTRICT_MODULE_NAME, 0);
 openpam_set_feature(OPENPAM_VERIFY_MODULE_FILE, 0);
 openpam_set_feature(OPENPAM_RESTRICT_SERVICE_NAME, 0);
 openpam_set_feature(OPENPAM_VERIFY_POLICY_FILE, 0);
 openpam_set_feature(OPENPAM_FALLBACK_TO_OTHER, 0);

 T(empty_policy);
 T(mod_return);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCPU_GET (int ) ;
 int PCPU_SET (int ,int (*) (int)) ;
 int SMCCC_ARCH_WORKAROUND_2 ;
 scalar_t__ SMCCC_RET_SUCCESS ;



 int cpuid ;
 char* kern_getenv (char*) ;
 scalar_t__ smccc_arch_features (int ) ;
 int smccc_arch_workaround_2 (int) ;
 int ssbd ;
 int ssbd_method ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
install_ssbd_workaround(void)
{
 char *env;

 if (PCPU_GET(cpuid) == 0) {
  env = kern_getenv("kern.cfg.ssbd");
  if (env != ((void*)0)) {
   if (strcmp(env, "force-on") == 0) {
    ssbd_method = 129;
   } else if (strcmp(env, "force-off") == 0) {
    ssbd_method = 130;
   }
  }
 }


 if (smccc_arch_features(SMCCC_ARCH_WORKAROUND_2) != SMCCC_RET_SUCCESS)
  return;

 switch(ssbd_method) {
 case 129:
  smccc_arch_workaround_2(1);
  break;
 case 130:
  smccc_arch_workaround_2(0);
  break;
 case 128:
 default:
  PCPU_SET(ssbd, smccc_arch_workaround_2);
  break;
 }
}

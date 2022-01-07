
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pam_module_t ;


 int PAM_LOG_DEBUG ;
 int PAM_LOG_ERROR ;
 int * openpam_dynamic (char const*) ;
 int openpam_log (int ,char*,char const*,...) ;
 int * openpam_static (char const*) ;
 int * strchr (char const*,char) ;

pam_module_t *
openpam_load_module(const char *modulename)
{
 pam_module_t *module;

 module = openpam_dynamic(modulename);
 openpam_log(PAM_LOG_DEBUG, "%s dynamic %s",
     (module == ((void*)0)) ? "no" : "using", modulename);
 if (module == ((void*)0)) {
  openpam_log(PAM_LOG_ERROR, "no %s found", modulename);
  return (((void*)0));
 }
 return (module);
}

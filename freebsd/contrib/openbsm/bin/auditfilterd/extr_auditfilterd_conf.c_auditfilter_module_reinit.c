
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module {scalar_t__ (* am_reinit ) (struct auditfilter_module*,int ,int ) ;int am_modulename; int am_argv; int am_argc; } ;


 scalar_t__ AUDIT_FILTER_SUCCESS ;
 scalar_t__ stub1 (struct auditfilter_module*,int ,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
auditfilter_module_reinit(struct auditfilter_module *am)
{

 if (am->am_reinit == ((void*)0))
  return (0);

 if (am->am_reinit(am, am->am_argc, am->am_argv) !=
     AUDIT_FILTER_SUCCESS) {
  warnx("auditfilter_module_reinit: %s: failed",
      am->am_modulename);
  return (-1);
 }

 return (0);
}

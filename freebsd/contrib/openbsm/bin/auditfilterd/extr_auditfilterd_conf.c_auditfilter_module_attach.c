
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module {scalar_t__ (* am_attach ) (struct auditfilter_module*,int ,int ) ;int * am_detach; int * am_rawrecord; int * am_record; int * am_reinit; int * am_cookie; int * am_dlhandle; int am_modulename; int am_argv; int am_argc; } ;


 int AUDIT_FILTER_ATTACH_STRING ;
 int AUDIT_FILTER_DETACH_STRING ;
 int AUDIT_FILTER_RAWRECORD_STRING ;
 int AUDIT_FILTER_RECORD_STRING ;
 int AUDIT_FILTER_REINIT_STRING ;
 scalar_t__ AUDIT_FILTER_SUCCESS ;
 int RTLD_NOW ;
 int dlclose (int *) ;
 int dlerror () ;
 int * dlopen (int ,int ) ;
 void* dlsym (int *,int ) ;
 scalar_t__ stub1 (struct auditfilter_module*,int ,int ) ;
 int warnx (char*,int ,...) ;

__attribute__((used)) static int
auditfilter_module_attach(struct auditfilter_module *am)
{

 am->am_dlhandle = dlopen(am->am_modulename, RTLD_NOW);
 if (am->am_dlhandle == ((void*)0)) {
  warnx("auditfilter_module_attach: %s: %s", am->am_modulename,
      dlerror());
  return (-1);
 }






 am->am_attach = dlsym(am->am_dlhandle, AUDIT_FILTER_ATTACH_STRING);
 am->am_reinit = dlsym(am->am_dlhandle, AUDIT_FILTER_REINIT_STRING);
 am->am_record = dlsym(am->am_dlhandle, AUDIT_FILTER_RECORD_STRING);
 am->am_rawrecord = dlsym(am->am_dlhandle,
     AUDIT_FILTER_RAWRECORD_STRING);
 am->am_detach = dlsym(am->am_dlhandle, AUDIT_FILTER_DETACH_STRING);

 if (am->am_attach != ((void*)0)) {
  if (am->am_attach(am, am->am_argc, am->am_argv)
      != AUDIT_FILTER_SUCCESS) {
   warnx("auditfilter_module_attach: %s: failed",
       am->am_modulename);
   dlclose(am->am_dlhandle);
   am->am_dlhandle = ((void*)0);
   am->am_cookie = ((void*)0);
   am->am_attach = ((void*)0);
   am->am_reinit = ((void*)0);
   am->am_record = ((void*)0);
   am->am_rawrecord = ((void*)0);
   am->am_detach = ((void*)0);
   return (-1);
  }
 }

 return (0);
}

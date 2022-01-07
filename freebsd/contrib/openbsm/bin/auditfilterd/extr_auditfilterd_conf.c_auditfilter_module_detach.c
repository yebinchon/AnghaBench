
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module {int * am_dlhandle; int * am_cookie; int (* am_detach ) (struct auditfilter_module*) ;} ;


 int dlclose (int *) ;
 int stub1 (struct auditfilter_module*) ;

__attribute__((used)) static void
auditfilter_module_detach(struct auditfilter_module *am)
{

 if (am->am_detach != ((void*)0))
  am->am_detach(am);
 am->am_cookie = ((void*)0);
 (void)dlclose(am->am_dlhandle);
 am->am_dlhandle = ((void*)0);
}

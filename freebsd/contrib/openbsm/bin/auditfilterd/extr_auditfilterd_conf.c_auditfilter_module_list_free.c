
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module_list {int dummy; } ;
struct auditfilter_module {int dummy; } ;


 int TAILQ_EMPTY (struct auditfilter_module_list*) ;
 struct auditfilter_module* TAILQ_FIRST (struct auditfilter_module_list*) ;
 int TAILQ_REMOVE (struct auditfilter_module_list*,struct auditfilter_module*,int ) ;
 int am_list ;
 int auditfilter_module_free (struct auditfilter_module*) ;

__attribute__((used)) static void
auditfilter_module_list_free(struct auditfilter_module_list *list)
{
 struct auditfilter_module *am;

 while (!(TAILQ_EMPTY(list))) {
  am = TAILQ_FIRST(list);
  TAILQ_REMOVE(list, am, am_list);
  auditfilter_module_free(am);
 }
}

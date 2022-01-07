
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct respip_set {char* const* tagname; int num_tags; } ;
struct config_strbytelist {struct config_strbytelist* str2; struct config_strbytelist* str; struct config_strbytelist* next; int str2len; } ;
struct config_str2list {struct config_str2list* str2; struct config_str2list* str; struct config_str2list* next; int str2len; } ;


 int config_del_strbytelist (struct config_strbytelist*) ;
 int config_deldblstrlist (struct config_strbytelist*) ;
 int free (struct config_strbytelist*) ;
 int log_assert (int) ;
 int respip_action_cfg (struct respip_set*,struct config_strbytelist*,struct config_strbytelist*) ;
 int respip_data_cfg (struct respip_set*,struct config_strbytelist*,struct config_strbytelist*) ;
 int respip_tag_cfg (struct respip_set*,struct config_strbytelist*,struct config_strbytelist*,int ) ;

__attribute__((used)) static int
respip_set_apply_cfg(struct respip_set* set, char* const* tagname, int num_tags,
 struct config_strbytelist* respip_tags,
 struct config_str2list* respip_actions,
 struct config_str2list* respip_data)
{
 struct config_strbytelist* p;
 struct config_str2list* pa;
 struct config_str2list* pd;

 set->tagname = tagname;
 set->num_tags = num_tags;

 p = respip_tags;
 while(p) {
  struct config_strbytelist* np = p->next;

  log_assert(p->str && p->str2);
  if(!respip_tag_cfg(set, p->str, p->str2, p->str2len)) {
   config_del_strbytelist(p);
   return 0;
  }
  free(p->str);
  free(p->str2);
  free(p);
  p = np;
 }

 pa = respip_actions;
 while(pa) {
  struct config_str2list* np = pa->next;
  log_assert(pa->str && pa->str2);
  if(!respip_action_cfg(set, pa->str, pa->str2)) {
   config_deldblstrlist(pa);
   return 0;
  }
  free(pa->str);
  free(pa->str2);
  free(pa);
  pa = np;
 }

 pd = respip_data;
 while(pd) {
  struct config_str2list* np = pd->next;
  log_assert(pd->str && pd->str2);
  if(!respip_data_cfg(set, pd->str, pd->str2)) {
   config_deldblstrlist(pd);
   return 0;
  }
  free(pd->str);
  free(pd->str2);
  free(pd);
  pd = np;
 }

 return 1;
}

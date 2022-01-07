
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_donotq {int dummy; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* donotqueryaddrs; } ;


 int donotq_str_cfg (struct iter_donotq*,int ) ;
 int log_assert (int ) ;

__attribute__((used)) static int
read_donotq(struct iter_donotq* dq, struct config_file* cfg)
{
 struct config_strlist* p;
 for(p = cfg->donotqueryaddrs; p; p = p->next) {
  log_assert(p->str);
  if(!donotq_str_cfg(dq, p->str))
   return 0;
 }
 return 1;
}

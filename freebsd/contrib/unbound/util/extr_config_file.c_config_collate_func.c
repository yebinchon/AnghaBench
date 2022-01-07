
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_collate_arg {int status; int list; } ;


 int cfg_strlist_append (int *,int ) ;
 int strdup (char*) ;

void config_collate_func(char* line, void* arg)
{
 struct config_collate_arg* m = (struct config_collate_arg*)arg;
 if(m->status)
  return;
 if(!cfg_strlist_append(&m->list, strdup(line)))
  m->status = 1;
}

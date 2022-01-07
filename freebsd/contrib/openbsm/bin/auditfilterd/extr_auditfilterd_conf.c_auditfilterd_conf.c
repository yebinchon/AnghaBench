
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module_list {int dummy; } ;
typedef int FILE ;


 int TAILQ_INIT (struct auditfilter_module_list*) ;
 int auditfilterd_conf_apply (struct auditfilter_module_list*) ;
 scalar_t__ auditfilterd_conf_read (char const*,int *,struct auditfilter_module_list*) ;

int
auditfilterd_conf(const char *filename, FILE *fp)
{
 struct auditfilter_module_list list;

 TAILQ_INIT(&list);
 if (auditfilterd_conf_read(filename, fp, &list) < 0)
  return (-1);

 auditfilterd_conf_apply(&list);

 return (0);
}

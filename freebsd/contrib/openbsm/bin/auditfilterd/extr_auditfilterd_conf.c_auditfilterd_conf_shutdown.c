
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auditfilter_module_list_detach (int *) ;
 int auditfilter_module_list_free (int *) ;
 int filter_list ;

void
auditfilterd_conf_shutdown(void)
{

 auditfilter_module_list_detach(&filter_list);
 auditfilter_module_list_free(&filter_list);
}

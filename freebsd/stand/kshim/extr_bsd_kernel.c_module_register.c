
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module_data {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct module_data*,int ) ;
 int entry ;
 int module_head ;

void
module_register(void *data)
{
 struct module_data *mdata = data;

 TAILQ_INSERT_TAIL(&module_head, mdata, entry);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autr_global_data {int dummy; } ;


 int free (struct autr_global_data*) ;
 int memset (struct autr_global_data*,int ,int) ;

void autr_global_delete(struct autr_global_data* global)
{
 if(!global)
  return;

 memset(global, 0, sizeof(*global));
 free(global);
}

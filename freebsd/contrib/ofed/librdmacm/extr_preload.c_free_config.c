
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* name; } ;


 TYPE_1__* config ;
 int config_cnt ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void free_config(void)
{
 while (config_cnt)
  free(config[--config_cnt].name);

 free(config);
}

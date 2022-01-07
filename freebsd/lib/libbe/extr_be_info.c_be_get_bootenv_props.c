
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int single_object; int * list; int * lbh; } ;
typedef TYPE_1__ prop_data_t ;
typedef int nvlist_t ;
typedef int libbe_handle_t ;


 int be_proplist_update (TYPE_1__*) ;

int
be_get_bootenv_props(libbe_handle_t *lbh, nvlist_t *dsnvl)
{
 prop_data_t data;

 data.lbh = lbh;
 data.list = dsnvl;
 data.single_object = 0;
 return (be_proplist_update(&data));
}

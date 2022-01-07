
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * prop_tbl; int propname; } ;
typedef TYPE_1__ name_to_prop_cb_t ;


 int ZPROP_CONT ;
 scalar_t__ propname_match (int ,int ,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int
zprop_name_to_prop_cb(int prop, void *cb_data)
{
 name_to_prop_cb_t *data = cb_data;

 if (propname_match(data->propname, strlen(data->propname),
     &data->prop_tbl[prop]))
  return (prop);

 return (ZPROP_CONT);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int range; } ;
struct eap_pwd_data {TYPE_1__ allowed_groups; } ;


 int freq_range_list_includes (TYPE_1__*,int) ;

__attribute__((used)) static int eap_pwd_allowed_group(struct eap_pwd_data *data, u16 group)
{
 if (!data->allowed_groups.range) {


  return group == 19 || group == 20 || group == 21;
 }

 return freq_range_list_includes(&data->allowed_groups, group);
}

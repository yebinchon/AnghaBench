
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ dev_type_match (int const*,int const*) ;

int dev_type_list_match(const u8 *dev_type, const u8 *req_dev_type[],
   size_t num_req_dev_type)
{
 size_t i;
 for (i = 0; i < num_req_dev_type; i++) {
  if (dev_type_match(dev_type, req_dev_type[i]))
   return 1;
 }
 return 0;
}

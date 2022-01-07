
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int UUID_LEN ;

int is_nil_uuid(const u8 *uuid)
{
 int i;
 for (i = 0; i < UUID_LEN; i++)
  if (uuid[i])
   return 0;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_key_schedule ;


 scalar_t__ des_check_key ;
 int des_set_key_checked (unsigned char const*,int ) ;
 int des_set_key_unchecked (unsigned char const*,int ) ;

int des_set_key(const unsigned char *key, des_key_schedule schedule)
{
 if (des_check_key)
 {
  return des_set_key_checked(key, schedule);
 }
 else
 {
  des_set_key_unchecked(key, schedule);
  return 0;
 }
}

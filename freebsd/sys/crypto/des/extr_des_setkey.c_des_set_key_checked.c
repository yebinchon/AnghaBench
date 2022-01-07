
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_key_schedule ;


 int des_check_key_parity (unsigned char const*) ;
 scalar_t__ des_is_weak_key (unsigned char const*) ;
 int des_set_key_unchecked (unsigned char const*,int ) ;

int des_set_key_checked(const unsigned char *key, des_key_schedule schedule)
{
 if (!des_check_key_parity(key))
  return(-1);
 if (des_is_weak_key(key))
  return(-2);
 des_set_key_unchecked(key, schedule);
 return 0;
}

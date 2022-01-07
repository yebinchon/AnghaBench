
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_cblock ;


 int NUM_WEAK_KEY ;
 scalar_t__ memcmp (int ,unsigned char const*,int) ;
 int * weak_keys ;

int des_is_weak_key(const unsigned char *key)
{
 int i;

 for (i=0; i<NUM_WEAK_KEY; i++)






  if (memcmp(weak_keys[i],key,sizeof(des_cblock)) == 0) return(1);
 return(0);
}

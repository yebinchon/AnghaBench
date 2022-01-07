
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int des_key_schedule ;


 int des_set_key (unsigned char const*,int ) ;

int des_key_sched(const unsigned char *key, des_key_schedule schedule)
{
 return(des_set_key(key,schedule));
}

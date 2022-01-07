
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ASSERT (int) ;
 int random_get_pseudo_bytes (void*,int) ;

uint64_t
spa_get_random(uint64_t range)
{
 uint64_t r;

 ASSERT(range != 0);

 (void) random_get_pseudo_bytes((void *)&r, sizeof (uint64_t));

 return (r % range);
}

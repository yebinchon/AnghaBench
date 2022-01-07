
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ UCL_RANDOM_FUNCTION ;
 scalar_t__ time (int *) ;

__attribute__((used)) static uint64_t
ucl_hash_seed (void)
{
 static uint64_t seed;

 if (seed == 0) {




  seed = time (((void*)0));

 }

 return seed;
}

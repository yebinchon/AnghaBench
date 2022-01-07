
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;


 int MAX (int,int ) ;
 int MIN (int,int ) ;
 int spa_get_dspace (int *) ;
 int spa_min_slop ;
 int spa_slop_shift ;

uint64_t
spa_get_slop_space(spa_t *spa)
{
 uint64_t space = spa_get_dspace(spa);
 return (MAX(space >> spa_slop_shift, MIN(space >> 1, spa_min_slop)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int spa_t ;


 int spa_asize_inflation ;

uint64_t
spa_get_worst_case_asize(spa_t *spa, uint64_t lsize)
{
 return (lsize * spa_asize_inflation);
}

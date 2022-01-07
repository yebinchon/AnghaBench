
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_state; } ;
typedef TYPE_1__ spa_t ;
typedef int pool_state_t ;



pool_state_t
spa_state(spa_t *spa)
{
 return (spa->spa_state);
}

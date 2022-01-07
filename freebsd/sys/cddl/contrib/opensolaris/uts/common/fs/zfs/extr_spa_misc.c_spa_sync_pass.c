
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_sync_pass; } ;
typedef TYPE_1__ spa_t ;



int
spa_sync_pass(spa_t *spa)
{
 return (spa->spa_sync_pass);
}

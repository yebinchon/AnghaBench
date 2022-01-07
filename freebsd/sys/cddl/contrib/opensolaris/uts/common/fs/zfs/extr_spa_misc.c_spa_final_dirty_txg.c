
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ spa_final_txg; } ;
typedef TYPE_1__ spa_t ;


 scalar_t__ TXG_DEFER_SIZE ;

uint64_t
spa_final_dirty_txg(spa_t *spa)
{
 return (spa->spa_final_txg - TXG_DEFER_SIZE);
}

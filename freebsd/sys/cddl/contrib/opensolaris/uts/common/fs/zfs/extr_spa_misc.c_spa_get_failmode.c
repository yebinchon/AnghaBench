
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int spa_failmode; } ;
typedef TYPE_1__ spa_t ;



uint8_t
spa_get_failmode(spa_t *spa)
{
 return (spa->spa_failmode);
}

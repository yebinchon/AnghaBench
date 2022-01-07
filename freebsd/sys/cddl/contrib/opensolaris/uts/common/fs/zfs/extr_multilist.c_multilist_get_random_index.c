
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ml_num_sublists; } ;
typedef TYPE_1__ multilist_t ;


 unsigned int spa_get_random (int ) ;

unsigned int
multilist_get_random_index(multilist_t *ml)
{
 return (spa_get_random(ml->ml_num_sublists));
}

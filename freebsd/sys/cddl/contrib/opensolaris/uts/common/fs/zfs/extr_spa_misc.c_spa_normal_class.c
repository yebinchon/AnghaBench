
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * spa_normal_class; } ;
typedef TYPE_1__ spa_t ;
typedef int metaslab_class_t ;



metaslab_class_t *
spa_normal_class(spa_t *spa)
{
 return (spa->spa_normal_class);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zthr_t ;
struct TYPE_2__ {int * spa_condensing_indirect; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;



__attribute__((used)) static boolean_t
spa_condense_indirect_thread_check(void *arg, zthr_t *zthr)
{
 spa_t *spa = arg;

 return (spa->spa_condensing_indirect != ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct proc {int dummy; } ;
struct TYPE_3__ {struct proc* spa_proc; } ;
typedef TYPE_1__ spa_t ;



struct proc *
spa_proc(spa_t *spa)
{
 return (spa->spa_proc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spa_active_count ;

int
spa_busy(void)
{
 return (spa_active_count);
}

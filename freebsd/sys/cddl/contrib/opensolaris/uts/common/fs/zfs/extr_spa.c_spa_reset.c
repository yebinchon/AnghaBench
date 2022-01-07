
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int POOL_STATE_UNINITIALIZED ;
 int spa_export_common (char*,int ,int *,int ,int ) ;

int
spa_reset(char *pool)
{
 return (spa_export_common(pool, POOL_STATE_UNINITIALIZED, ((void*)0),
     B_FALSE, B_FALSE));
}

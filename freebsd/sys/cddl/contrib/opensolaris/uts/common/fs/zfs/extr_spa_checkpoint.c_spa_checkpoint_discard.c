
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZFS_SPACE_CHECK_DISCARD_CHECKPOINT ;
 int dsl_early_sync_task (char const*,int ,int ,int *,int ,int ) ;
 int spa_checkpoint_discard_check ;
 int spa_checkpoint_discard_sync ;

int
spa_checkpoint_discard(const char *pool)
{
 return (dsl_early_sync_task(pool, spa_checkpoint_discard_check,
     spa_checkpoint_discard_sync, ((void*)0), 0,
     ZFS_SPACE_CHECK_DISCARD_CHECKPOINT));
}

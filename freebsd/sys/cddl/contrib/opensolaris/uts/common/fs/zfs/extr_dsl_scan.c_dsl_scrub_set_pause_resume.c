
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pool_scrub_cmd_t ;
struct TYPE_3__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;


 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_scrub_pause_resume_check ;
 int dsl_scrub_pause_resume_sync ;
 int dsl_sync_task (int ,int ,int ,int *,int,int ) ;
 int spa_name (int ) ;

int
dsl_scrub_set_pause_resume(const dsl_pool_t *dp, pool_scrub_cmd_t cmd)
{
 return (dsl_sync_task(spa_name(dp->dp_spa),
     dsl_scrub_pause_resume_check, dsl_scrub_pause_resume_sync, &cmd, 3,
     ZFS_SPACE_CHECK_RESERVED));
}

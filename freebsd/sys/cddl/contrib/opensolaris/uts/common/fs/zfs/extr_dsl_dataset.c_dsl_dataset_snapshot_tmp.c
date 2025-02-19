
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spa_t ;
typedef int minor_t ;
struct TYPE_3__ {char const* ddsta_fsname; char const* ddsta_snapname; char const* ddsta_htag; int ddsta_cleanup_minor; } ;
typedef TYPE_1__ dsl_dataset_snapshot_tmp_arg_t ;
typedef int boolean_t ;


 int FTAG ;
 scalar_t__ SPA_VERSION_FAST_SNAP ;
 int ZFS_SPACE_CHECK_RESERVED ;
 int dsl_dataset_snapshot_tmp_check ;
 int dsl_dataset_snapshot_tmp_sync ;
 int dsl_sync_task (char const*,int ,int ,TYPE_1__*,int,int ) ;
 int spa_close (int *,int ) ;
 int spa_open (char const*,int **,int ) ;
 scalar_t__ spa_version (int *) ;
 int zil_resume (void*) ;
 int zil_suspend (char const*,void**) ;

int
dsl_dataset_snapshot_tmp(const char *fsname, const char *snapname,
    minor_t cleanup_minor, const char *htag)
{
 dsl_dataset_snapshot_tmp_arg_t ddsta;
 int error;
 spa_t *spa;
 boolean_t needsuspend;
 void *cookie;

 ddsta.ddsta_fsname = fsname;
 ddsta.ddsta_snapname = snapname;
 ddsta.ddsta_cleanup_minor = cleanup_minor;
 ddsta.ddsta_htag = htag;

 error = spa_open(fsname, &spa, FTAG);
 if (error != 0)
  return (error);
 needsuspend = (spa_version(spa) < SPA_VERSION_FAST_SNAP);
 spa_close(spa, FTAG);

 if (needsuspend) {
  error = zil_suspend(fsname, &cookie);
  if (error != 0)
   return (error);
 }

 error = dsl_sync_task(fsname, dsl_dataset_snapshot_tmp_check,
     dsl_dataset_snapshot_tmp_sync, &ddsta, 3, ZFS_SPACE_CHECK_RESERVED);

 if (needsuspend)
  zil_resume(cookie);
 return (error);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int (* svn_fs_pack_notify_t ) (void*,int,int ,int *) ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
struct pack_baton {scalar_t__ max_mem; void* cancel_baton; int cancel_func; void* notify_baton; int (* notify_func ) (void*,int,int ,int *) ;TYPE_1__* fs; int member_0; } ;
struct TYPE_8__ {scalar_t__ format; int max_files_per_dir; int min_unpacked_rev; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ DEFAULT_MAX_MEM ;
 int SVN_ERR (int ) ;
 int SVN_ERR_UNSUPPORTED_FEATURE ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_PACK_LOCK_FORMAT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int get_pack_status (scalar_t__*,TYPE_1__*,int *) ;
 int pack_body ;
 int stub1 (void*,int,int ,int *) ;
 int stub2 (void*,int,int ,int *) ;
 int * svn_error_createf (int ,int *,int ,scalar_t__) ;
 int * svn_error_trace (int *) ;
 int * svn_fs_fs__with_pack_lock (TYPE_1__*,int ,struct pack_baton*,int *) ;
 int * svn_fs_fs__with_write_lock (TYPE_1__*,int ,struct pack_baton*,int *) ;
 int svn_fs_pack_notify_noop ;

svn_error_t *
svn_fs_fs__pack(svn_fs_t *fs,
                apr_size_t max_mem,
                svn_fs_pack_notify_t notify_func,
                void *notify_baton,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *pool)
{
  struct pack_baton pb = { 0 };
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_error_t *err;
  svn_boolean_t fully_packed;



  if (ffd->format < SVN_FS_FS__MIN_PACKED_FORMAT)
    return svn_error_createf(SVN_ERR_UNSUPPORTED_FEATURE, ((void*)0),
      _("FSFS format (%d) too old to pack; please upgrade the filesystem."),
      ffd->format);


  if (!ffd->max_files_per_dir)
    {
      if (notify_func)
        (*notify_func)(notify_baton, -1, svn_fs_pack_notify_noop, pool);

      return SVN_NO_ERROR;
    }


  SVN_ERR(get_pack_status(&fully_packed, fs, pool));
  if (fully_packed)
    {
      if (notify_func)
        (*notify_func)(notify_baton,
                       ffd->min_unpacked_rev / ffd->max_files_per_dir,
                       svn_fs_pack_notify_noop, pool);

      return SVN_NO_ERROR;
    }


  pb.fs = fs;
  pb.notify_func = notify_func;
  pb.notify_baton = notify_baton;
  pb.cancel_func = cancel_func;
  pb.cancel_baton = cancel_baton;
  pb.max_mem = max_mem ? max_mem : DEFAULT_MAX_MEM;

  if (ffd->format >= SVN_FS_FS__MIN_PACK_LOCK_FORMAT)
    {







      err = svn_fs_fs__with_pack_lock(fs, pack_body, &pb, pool);
    }
  else
    {

      err = svn_fs_fs__with_write_lock(fs, pack_body, &pb, pool);
    }

  return svn_error_trace(err);
}

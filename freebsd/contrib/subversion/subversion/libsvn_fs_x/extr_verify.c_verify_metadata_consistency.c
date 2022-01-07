
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_12__ {scalar_t__ max_files_per_dir; int min_unpacked_rev; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_13__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int (* svn_fs_progress_notify_func_t ) (scalar_t__,void*,int *) ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 int * compare_l2p_to_p2l_index (TYPE_2__*,scalar_t__,scalar_t__,int ,void*,int *) ;
 int * compare_p2l_to_l2p_index (TYPE_2__*,scalar_t__,scalar_t__,int ,void*,int *) ;
 int * compare_p2l_to_rev (TYPE_2__*,scalar_t__,scalar_t__,int ,void*,int *) ;
 int svn_error_clear (int *) ;
 int svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_fs_x__pack_size (TYPE_2__*,scalar_t__) ;
 scalar_t__ svn_fs_x__packed_base_rev (TYPE_2__*,scalar_t__) ;
 int * svn_fs_x__read_min_unpacked_rev (int *,TYPE_2__*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * verify_index_checksums (TYPE_2__*,scalar_t__,int ,void*,int *) ;
 int * verify_revprops (TYPE_2__*,scalar_t__,scalar_t__,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
verify_metadata_consistency(svn_fs_t *fs,
                            svn_revnum_t start,
                            svn_revnum_t end,
                            svn_fs_progress_notify_func_t notify_func,
                            void *notify_baton,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_revnum_t revision, next_revision;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  for (revision = start; revision <= end; revision = next_revision)
    {
      svn_revnum_t count = svn_fs_x__packed_base_rev(fs, revision);
      svn_revnum_t pack_start = count;
      svn_revnum_t pack_end = pack_start + svn_fs_x__pack_size(fs, revision);

      svn_pool_clear(iterpool);

      if (notify_func && (pack_start % ffd->max_files_per_dir == 0))
        notify_func(pack_start, notify_baton, iterpool);


      err = verify_index_checksums(fs, pack_start, cancel_func,
                                   cancel_baton, iterpool);


      if (!err)
        err = compare_l2p_to_p2l_index(fs, pack_start, pack_end - pack_start,
                                       cancel_func, cancel_baton, iterpool);
      if (!err)
        err = compare_p2l_to_l2p_index(fs, pack_start, pack_end - pack_start,
                                       cancel_func, cancel_baton, iterpool);


      if (!err)
        err = compare_p2l_to_rev(fs, pack_start, pack_end - pack_start,
                                 cancel_func, cancel_baton, iterpool);


      if (!err)
        err = verify_revprops(fs, pack_start, pack_end,
                              cancel_func, cancel_baton, iterpool);



      if (err)
        {
          svn_error_t *err2
            = svn_fs_x__read_min_unpacked_rev(&ffd->min_unpacked_rev,
                                              fs, scratch_pool);


          if (err2)
            return svn_error_trace(svn_error_compose_create(err, err2));
        }


      if (err && count != svn_fs_x__pack_size(fs, revision))
        {
          svn_error_clear(err);



          next_revision = svn_fs_x__packed_base_rev(fs, revision);
        }
      else
        {
          SVN_ERR(err);
          next_revision = pack_end;
        }
    }

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}

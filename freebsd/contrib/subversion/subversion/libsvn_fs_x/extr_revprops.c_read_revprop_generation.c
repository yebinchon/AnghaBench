
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int revprop_generation; scalar_t__ has_write_lock; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_12__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_13__ {int* generation; TYPE_2__* fs; } ;
typedef TYPE_3__ revprop_generation_upgrade_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int FALSE ;
 scalar_t__ REVPROP_CHANGE_TIMEOUT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_time_now () ;
 int read_revprop_generation_file (int*,TYPE_2__*,int *) ;
 int revprop_generation_fixup (TYPE_3__*,int *) ;
 int svn_fs_x__path_revprop_generation (TYPE_2__*,int *) ;
 int svn_fs_x__with_write_lock (TYPE_2__*,int (*) (TYPE_3__*,int *),TYPE_3__*,int *) ;
 int svn_io_file_affected_time (scalar_t__*,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_revprop_generation(svn_fs_t *fs,
                        apr_pool_t *scratch_pool)
{
  apr_int64_t current = 0;
  svn_fs_x__data_t *ffd = fs->fsap_data;


  SVN_ERR(read_revprop_generation_file(&current, fs, scratch_pool));


  if (current % 2)
    {
      svn_boolean_t timeout = FALSE;




      if (!ffd->has_write_lock)
        {
          apr_time_t mtime;
          SVN_ERR(svn_io_file_affected_time(&mtime,
                        svn_fs_x__path_revprop_generation(fs, scratch_pool),
                        scratch_pool));
          timeout = apr_time_now() > mtime + REVPROP_CHANGE_TIMEOUT;
        }

      if (ffd->has_write_lock || timeout)
        {
          revprop_generation_upgrade_t baton;
          baton.generation = &current;
          baton.fs = fs;





          if (ffd->has_write_lock)
            SVN_ERR(revprop_generation_fixup(&baton, scratch_pool));
          else
            SVN_ERR(svn_fs_x__with_write_lock(fs, revprop_generation_fixup,
                                              &baton, scratch_pool));
        }
    }


  ffd->revprop_generation = current;
  return SVN_NO_ERROR;
}

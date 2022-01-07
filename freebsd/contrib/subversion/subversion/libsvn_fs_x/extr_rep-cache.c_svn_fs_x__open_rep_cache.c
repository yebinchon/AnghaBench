
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rep_cache_db_opened; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_6__ {int path; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int _ (char*) ;
 int open_rep_cache ;
 int path_rep_cache_db (int ,int *) ;
 int * svn_atomic__init_once (int *,int ,TYPE_2__*,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_quick_wrapf (int *,int ,int ) ;

svn_error_t *
svn_fs_x__open_rep_cache(svn_fs_t *fs,
                         apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_error_t *err = svn_atomic__init_once(&ffd->rep_cache_db_opened,
                                           open_rep_cache, fs, scratch_pool);
  return svn_error_quick_wrapf(err,
                               _("Couldn't open rep-cache database '%s'"),
                               svn_dirent_local_style(
                                 path_rep_cache_db(fs->path, scratch_pool),
                                 scratch_pool));
}

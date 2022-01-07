
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_6__ {int change_set; } ;
struct TYPE_5__ {TYPE_3__ id; } ;
typedef TYPE_1__ svn_fs_x__representation_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * open_and_seek_revision (int **,int *,TYPE_3__*,int *,int *) ;
 int * open_and_seek_transaction (int **,int *,TYPE_1__*,int *,int *) ;
 scalar_t__ svn_fs_x__is_revision (int ) ;

__attribute__((used)) static svn_error_t *
open_and_seek_representation(svn_fs_x__revision_file_t **file_p,
                             svn_fs_t *fs,
                             svn_fs_x__representation_t *rep,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  if (svn_fs_x__is_revision(rep->id.change_set))
    return open_and_seek_revision(file_p, fs, &rep->id, result_pool,
                                  scratch_pool);
  else
    return open_and_seek_transaction(file_p, fs, rep, result_pool,
                                     scratch_pool);
}

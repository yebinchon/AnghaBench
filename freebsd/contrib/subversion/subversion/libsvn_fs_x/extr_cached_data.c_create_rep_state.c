
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_fs_x__representation_t ;
typedef int svn_fs_x__rep_header_t ;
typedef int svn_fs_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int shared_file_t ;
typedef int rep_state_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {char* data; } ;


 scalar_t__ SVN_ERR_FS_CORRUPT ;
 int TRUE ;
 TYPE_1__* create_rep_state_body (int **,int **,int **,int *,int *,int *,int *) ;
 TYPE_1__* svn_error_createf (scalar_t__,TYPE_1__*,char*,char*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_2__* svn_fs_x__unparse_representation (int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
create_rep_state(rep_state_t **rep_state,
                 svn_fs_x__rep_header_t **rep_header,
                 shared_file_t **shared_file,
                 svn_fs_x__representation_t *rep,
                 svn_fs_t *fs,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err = create_rep_state_body(rep_state, rep_header,
                                           shared_file, rep, fs,
                                           result_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_CORRUPT)
    {







      return svn_error_createf(SVN_ERR_FS_CORRUPT, err,
                               "Corrupt representation '%s'",
                               rep
                               ? svn_fs_x__unparse_representation
                                   (rep, TRUE, scratch_pool,
                                    scratch_pool)->data
                               : "(null)");
    }

  return svn_error_trace(err);
}

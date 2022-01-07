
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__rep_header_t ;
struct TYPE_14__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int shared_file_t ;
typedef int representation_t ;
typedef int rep_state_t ;
struct TYPE_15__ {int format; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_16__ {char* data; } ;


 scalar_t__ SVN_ERR_FS_CORRUPT ;
 int TRUE ;
 TYPE_2__* create_rep_state_body (int **,int **,int **,int *,TYPE_1__*,int *,int *) ;
 TYPE_2__* svn_error_createf (scalar_t__,TYPE_2__*,char*,char const*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_4__* svn_fs_fs__unparse_representation (int *,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
create_rep_state(rep_state_t **rep_state,
                 svn_fs_fs__rep_header_t **rep_header,
                 shared_file_t **shared_file,
                 representation_t *rep,
                 svn_fs_t *fs,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err = create_rep_state_body(rep_state, rep_header,
                                           shared_file, rep, fs,
                                           result_pool, scratch_pool);
  if (err && err->apr_err == SVN_ERR_FS_CORRUPT)
    {
      fs_fs_data_t *ffd = fs->fsap_data;
      const char *rep_str;
      rep_str = rep
              ? svn_fs_fs__unparse_representation
                  (rep, ffd->format, TRUE, scratch_pool, scratch_pool)->data
              : "(null)";

      return svn_error_createf(SVN_ERR_FS_CORRUPT, err,
                               "Corrupt representation '%s'",
                               rep_str);
    }

  return svn_error_trace(err);
}

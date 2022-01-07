
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;


 scalar_t__ SVN_ERR_FS_NO_SUCH_COPY ;
 TYPE_2__* SVN_NO_ERROR ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 TYPE_2__* svn_fs_bdb__delete_copy (int ,char const*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_cleanup_txn_copy(void *baton, trail_t *trail)
{
  const char *copy_id = *(const char **)baton;
  svn_error_t *err = svn_fs_bdb__delete_copy(trail->fs, copy_id, trail,
                                             trail->pool);


  if (err && (err->apr_err == SVN_ERR_FS_NO_SUCH_COPY))
    {
      svn_error_clear(err);
      err = SVN_NO_ERROR;
    }
  return svn_error_trace(err);
}

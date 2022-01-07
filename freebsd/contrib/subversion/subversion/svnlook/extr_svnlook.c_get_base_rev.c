
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int txn_name; int txn; scalar_t__ rev_id; scalar_t__ is_revision; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NO_SUCH_REVISION ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_fs_txn_base_revision (int ) ;

__attribute__((used)) static svn_error_t *
get_base_rev(svn_revnum_t *base_rev, svnlook_ctxt_t *c, apr_pool_t *pool)
{
  if (c->is_revision)
    {
      *base_rev = c->rev_id - 1;
    }
  else
    {
      *base_rev = svn_fs_txn_base_revision(c->txn);

      if (! SVN_IS_VALID_REVNUM(*base_rev))
        return svn_error_createf
          (SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
           _("Transaction '%s' is not based on a revision; how odd"),
           c->txn_name);
    }
  return SVN_NO_ERROR;
}

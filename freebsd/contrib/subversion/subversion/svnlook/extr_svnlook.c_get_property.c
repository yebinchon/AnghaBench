
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rev_id; int fs; int txn; int is_revision; } ;
typedef TYPE_1__ svnlook_ctxt_t ;
typedef int svn_string_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_revision_prop2 (int **,int ,int ,char const*,int ,int *,int *) ;
 int svn_fs_txn_prop (int **,int ,char const*,int *) ;

__attribute__((used)) static svn_error_t *
get_property(svn_string_t **prop_value,
             svnlook_ctxt_t *c,
             const char *prop_name,
             apr_pool_t *pool)
{
  svn_string_t *raw_value;


  if (! c->is_revision)
    SVN_ERR(svn_fs_txn_prop(&raw_value, c->txn, prop_name, pool));


  else
    SVN_ERR(svn_fs_revision_prop2(&raw_value, c->fs, c->rev_id,
                                  prop_name, TRUE, pool, pool));

  *prop_value = raw_value;

  return SVN_NO_ERROR;
}

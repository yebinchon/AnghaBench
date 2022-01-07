
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_NOT_LOCKED ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int path_for_error_message (int *,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_wc__db_wclock_owns_lock_internal (int *,int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
verify_write_lock(svn_wc__db_wcroot_t *wcroot,
                  const char *local_relpath,
                  apr_pool_t *scratch_pool)
{
  svn_boolean_t locked;

  SVN_ERR(svn_wc__db_wclock_owns_lock_internal(&locked, wcroot, local_relpath,
                                               FALSE, scratch_pool));
  if (!locked)
    {
      return svn_error_createf(SVN_ERR_WC_NOT_LOCKED, ((void*)0),
                               _("No write-lock in '%s'"),
                               path_for_error_message(wcroot, local_relpath,
                                                      scratch_pool));
    }

  return SVN_NO_ERROR;
}

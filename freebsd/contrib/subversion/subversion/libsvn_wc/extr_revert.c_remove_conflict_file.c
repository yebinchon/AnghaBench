
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_error_clear (int *) ;
 int * svn_io_remove_file2 (char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
remove_conflict_file(svn_boolean_t *notify_required,
                     const char *conflict_abspath,
                     const char *local_abspath,
                     apr_pool_t *scratch_pool)
{
  if (conflict_abspath)
    {
      svn_error_t *err = svn_io_remove_file2(conflict_abspath, FALSE,
                                             scratch_pool);
      if (err)
        svn_error_clear(err);
      else
        *notify_required = TRUE;
    }

  return SVN_NO_ERROR;
}

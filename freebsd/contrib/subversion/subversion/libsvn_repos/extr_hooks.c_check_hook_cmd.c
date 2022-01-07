
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_VA_NULL ;
 scalar_t__ TRUE ;
 char const* apr_pstrcat (int *,char const*,char const* const,int ) ;
 int svn_error_clear (int *) ;
 int * svn_io_check_resolved_path (char const* const,scalar_t__*,int *) ;
 int * svn_io_check_special_path (char const* const,scalar_t__*,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static const char*
check_hook_cmd(const char *hook, svn_boolean_t *broken_link, apr_pool_t *pool)
{
  static const char* const check_extns[] = {
    "",

    ((void*)0)
  };

  const char *const *extn;
  svn_error_t *err = ((void*)0);
  svn_boolean_t is_special;
  for (extn = check_extns; *extn; ++extn)
    {
      const char *const hook_path =
        (**extn ? apr_pstrcat(pool, hook, *extn, SVN_VA_NULL) : hook);

      svn_node_kind_t kind;
      if (!(err = svn_io_check_resolved_path(hook_path, &kind, pool))
          && kind == svn_node_file)
        {
          *broken_link = FALSE;
          return hook_path;
        }
      svn_error_clear(err);
      if (!(err = svn_io_check_special_path(hook_path, &kind, &is_special,
                                            pool))
          && is_special)
        {
          *broken_link = TRUE;
          return hook_path;
        }
      svn_error_clear(err);
    }
  return ((void*)0);
}

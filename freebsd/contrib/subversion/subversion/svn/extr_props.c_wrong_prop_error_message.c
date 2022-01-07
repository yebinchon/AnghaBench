
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_cl__prop_use_t ;
typedef int apr_pool_t ;


 int SVN_PROP_PREFIX ;
 int _ (char*) ;
 char const* apr_psprintf (int *,int ,char const*,int ) ;




__attribute__((used)) static const char*
wrong_prop_error_message(svn_cl__prop_use_t prop_use, const char *prop_name,
                         apr_pool_t *scratch_pool)
{
  switch (prop_use)
    {
    case 129:
      return apr_psprintf(
          scratch_pool,
          _("'%s' is not a valid %s property name; use '--force' to set it"),
          prop_name, SVN_PROP_PREFIX);
    case 130:
      return apr_psprintf(
          scratch_pool,
          _("'%s' is not a valid %s property name; use '--force' to edit it"),
          prop_name, SVN_PROP_PREFIX);
    case 128:
    default:
      return apr_psprintf(
          scratch_pool,
          _("'%s' is not a valid %s property name; use '--force' to use it"),
          prop_name, SVN_PROP_PREFIX);
    }
}

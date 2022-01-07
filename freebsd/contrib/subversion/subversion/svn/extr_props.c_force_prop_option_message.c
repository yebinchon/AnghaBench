
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_cl__prop_use_t ;
typedef int apr_pool_t ;


 int _ (char*) ;
 char const* apr_psprintf (int *,int ,char const*) ;




__attribute__((used)) static const char*
force_prop_option_message(svn_cl__prop_use_t prop_use, const char *prop_name,
                          apr_pool_t *scratch_pool)
{
  switch (prop_use)
    {
    case 129:
      return apr_psprintf(
          scratch_pool,
          _("Use '--force' to set the '%s' property."),
          prop_name);
    case 130:
      return apr_psprintf(
          scratch_pool,
          _("Use '--force' to edit the '%s' property."),
          prop_name);
    case 128:
    default:
      return apr_psprintf(
          scratch_pool,
          _("Use '--force' to use the '%s' property'."),
          prop_name);
    }
}

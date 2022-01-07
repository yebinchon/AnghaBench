
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_12__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_EOL_STR ;
 scalar_t__ APR_STATUS_IS_EINVAL (int ) ;
 int FALSE ;
 int SVN_ERR (int ) ;
 TYPE_2__* SVN_NO_ERROR ;
 TYPE_2__* svn_cmdline_cstring_from_utf8 (char const**,char const*,int *) ;
 char* svn_cmdline_cstring_from_utf8_fuzzy (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_1__* svn_string_create (char const*,int *) ;
 int svn_subst_translate_cstring2 (int ,char const**,int ,int ,int *,int ,int *) ;
 TYPE_2__* svn_utf_cstring_from_utf8 (char const**,char const*,int *) ;
 char* svn_utf_cstring_from_utf8_fuzzy (char const*,int *) ;

svn_error_t *
svn_subst_detranslate_string(svn_string_t **new_value,
                             const svn_string_t *value,
                             svn_boolean_t for_output,
                             apr_pool_t *pool)
{
  svn_error_t *err;
  const char *val_neol;
  const char *val_nlocale_neol;

  if (value == ((void*)0))
    {
      *new_value = ((void*)0);
      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_subst_translate_cstring2(value->data,
                                       &val_neol,
                                       APR_EOL_STR,
                                       FALSE,
                                       ((void*)0),
                                       FALSE,
                                       pool));

  if (for_output)
    {
      err = svn_cmdline_cstring_from_utf8(&val_nlocale_neol, val_neol, pool);
      if (err && (APR_STATUS_IS_EINVAL(err->apr_err)))
        {
          val_nlocale_neol =
            svn_cmdline_cstring_from_utf8_fuzzy(val_neol, pool);
          svn_error_clear(err);
        }
      else if (err)
        return err;
    }
  else
    {
      err = svn_utf_cstring_from_utf8(&val_nlocale_neol, val_neol, pool);
      if (err && (APR_STATUS_IS_EINVAL(err->apr_err)))
        {
          val_nlocale_neol = svn_utf_cstring_from_utf8_fuzzy(val_neol, pool);
          svn_error_clear(err);
        }
      else if (err)
        return err;
    }

  *new_value = svn_string_create(val_nlocale_neol, pool);

  return SVN_NO_ERROR;
}

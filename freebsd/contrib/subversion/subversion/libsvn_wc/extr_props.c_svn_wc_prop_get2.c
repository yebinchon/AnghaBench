
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_string_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;
typedef int apr_pool_t ;


 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_BAD_PROP_KIND ;
 scalar_t__ SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_createf (int ,int *,int ,char const*) ;
 TYPE_2__* svn_error_trace (TYPE_2__*) ;
 int svn_prop_entry_kind ;
 int svn_property_kind2 (char const*) ;
 TYPE_2__* svn_wc__internal_propget (int const**,int ,char const*,char const*,int *,int *) ;

svn_error_t *
svn_wc_prop_get2(const svn_string_t **value,
                 svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 const char *name,
                 apr_pool_t *result_pool,
                 apr_pool_t *scratch_pool)
{
  enum svn_prop_kind kind = svn_property_kind2(name);
  svn_error_t *err;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  if (kind == svn_prop_entry_kind)
    {

      return svn_error_createf(SVN_ERR_BAD_PROP_KIND, ((void*)0),
                               _("Property '%s' is an entry property"), name);
    }

  err = svn_wc__internal_propget(value, wc_ctx->db, local_abspath, name,
                                 result_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_UNEXPECTED_STATUS)
        return svn_error_trace(err);

      svn_error_clear(err);

      *value = ((void*)0);
    }

  return SVN_NO_ERROR;
}

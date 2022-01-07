
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_subst_eol_style_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EOL_STYLE ;
 int SVN_PROP_KEYWORDS ;
 int SVN_PROP_SPECIAL ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_prop_get_value (int *,int ) ;
 int svn_subst_eol_style_from_value (int *,char const**,char const*) ;
 int svn_wc__expand_keywords (int **,int *,char const*,int *,char const*,int ,int *,int *) ;
 int svn_wc__get_actual_props (int **,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__get_translate_info(svn_subst_eol_style_t *style,
                           const char **eol,
                           apr_hash_t **keywords,
                           svn_boolean_t *special,
                           svn_wc__db_t *db,
                           const char *local_abspath,
                           apr_hash_t *props,
                           svn_boolean_t for_normalization,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  const char *propval;
  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  if (props == ((void*)0))
    SVN_ERR(svn_wc__get_actual_props(&props, db, local_abspath,
                                     scratch_pool, scratch_pool));

  if (eol)
    {
      propval = svn_prop_get_value(props, SVN_PROP_EOL_STYLE);

      svn_subst_eol_style_from_value(style, eol, propval);
    }

  if (keywords)
    {
      propval = svn_prop_get_value(props, SVN_PROP_KEYWORDS);

      if (!propval || *propval == '\0')
        *keywords = ((void*)0);
      else
        SVN_ERR(svn_wc__expand_keywords(keywords,
                                        db, local_abspath, ((void*)0),
                                        propval, for_normalization,
                                        result_pool, scratch_pool));
    }
  if (special)
    {
      propval = svn_prop_get_value(props, SVN_PROP_SPECIAL);

      *special = (propval != ((void*)0));
    }

  return SVN_NO_ERROR;
}

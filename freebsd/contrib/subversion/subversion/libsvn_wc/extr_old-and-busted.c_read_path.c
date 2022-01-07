
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int read_str (char const**,char**,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_relpath_is_canonical (char const*) ;

__attribute__((used)) static svn_error_t *
read_path(const char **result,
          char **buf, const char *end,
          apr_pool_t *pool)
{
  SVN_ERR(read_str(result, buf, end, pool));
  if (*result && **result && !svn_relpath_is_canonical(*result))
    return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                             _("Entry contains non-canonical path '%s'"),
                             *result);
  return SVN_NO_ERROR;
}

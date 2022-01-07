
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 int APR_FILEPATH_ENCODING_UTF8 ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ apr_filepath_encoding (int*,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

__attribute__((used)) static svn_error_t *
get_path_encoding(svn_boolean_t *path_is_utf8, apr_pool_t *pool)
{
  apr_status_t apr_err;
  int encoding_style;

  apr_err = apr_filepath_encoding(&encoding_style, pool);
  if (apr_err)
    return svn_error_wrap_apr(apr_err,
                              _("Can't determine the native path encoding"));




  *path_is_utf8 = (encoding_style == APR_FILEPATH_ENCODING_UTF8);
  return SVN_NO_ERROR;
}

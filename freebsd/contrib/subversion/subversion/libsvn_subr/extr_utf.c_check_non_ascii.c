
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int APR_EINVAL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* apr_pstrndup (int *,char const*,int) ;
 int svn_ctype_isascii (char const) ;
 scalar_t__ svn_ctype_iscntrl (char const) ;
 int svn_ctype_isspace (char const) ;
 int * svn_error_createf (int ,int *,int ,...) ;

__attribute__((used)) static svn_error_t *
check_non_ascii(const char *data, apr_size_t len, apr_pool_t *pool)
{
  const char *data_start = data;

  for (; len > 0; --len, data++)
    {
      if ((! svn_ctype_isascii(*data))
          || ((! svn_ctype_isspace(*data))
              && svn_ctype_iscntrl(*data)))
        {
          if (data - data_start)
            {
              const char *error_data
                = apr_pstrndup(pool, data_start, (data - data_start));

              return svn_error_createf
                (APR_EINVAL, ((void*)0),
                 _("Safe data '%s' was followed by non-ASCII byte %d: "
                   "unable to convert to/from UTF-8"),
                 error_data, *((const unsigned char *) data));
            }
          else
            {
              return svn_error_createf
                (APR_EINVAL, ((void*)0),
                 _("Non-ASCII character (code %d) detected, "
                   "and unable to convert to/from UTF-8"),
                 *((const unsigned char *) data));
            }
        }
    }

  return SVN_NO_ERROR;
}

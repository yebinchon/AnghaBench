
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_BAD_DATE ;
 TYPE_1__* SVN_NO_ERROR ;
 char* _ (char*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 TYPE_1__* svn_time_from_cstring (int *,char const*,int *) ;
 char* svn_time_to_human_cstring (int ,int *) ;

svn_error_t *
svn_cl__time_cstring_to_human_cstring(const char **human_cstring,
                                      const char *data,
                                      apr_pool_t *pool)
{
  svn_error_t *err;
  apr_time_t when;

  err = svn_time_from_cstring(&when, data, pool);
  if (err && err->apr_err == SVN_ERR_BAD_DATE)
    {
      svn_error_clear(err);

      *human_cstring = _("(invalid date)");
      return SVN_NO_ERROR;
    }
  else if (err)
    return svn_error_trace(err);

  *human_cstring = svn_time_to_human_cstring(when, pool);

  return SVN_NO_ERROR;
}

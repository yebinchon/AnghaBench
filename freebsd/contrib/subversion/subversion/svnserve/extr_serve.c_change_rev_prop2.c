
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int server_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int do_change_rev_prop (int *,int *,int ,char const*,int const* const*,int *,int *) ;
 int * log_fail_and_flush (int *,int *,int *,int *) ;
 int * svn_error_create (int ,int *,char*) ;
 int svn_ra_svn__parse_tuple (int *,char*,int *,char const**,int **,scalar_t__*,int **) ;

__attribute__((used)) static svn_error_t *
change_rev_prop2(svn_ra_svn_conn_t *conn,
                 apr_pool_t *pool,
                 svn_ra_svn__list_t *params,
                 void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *name;
  svn_string_t *value;
  const svn_string_t *const *old_value_p;
  svn_string_t *old_value;
  svn_boolean_t dont_care;

  SVN_ERR(svn_ra_svn__parse_tuple(params, "rc(?s)(b?s)",
                                  &rev, &name, &value,
                                  &dont_care, &old_value));


  if (dont_care)
    old_value_p = ((void*)0);
  else
    old_value_p = (const svn_string_t *const *)&old_value;


  if (dont_care && old_value)
    {
      svn_error_t *err;
      err = svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                             "'previous-value' and 'dont-care' cannot both be "
                             "set in 'change-rev-prop2' request");
      return log_fail_and_flush(err, b, conn, pool);
    }


  SVN_ERR(do_change_rev_prop(conn, b, rev, name, old_value_p, value, pool));

  return SVN_NO_ERROR;
}

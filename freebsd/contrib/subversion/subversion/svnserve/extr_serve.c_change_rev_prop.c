
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__list_t ;
typedef int svn_error_t ;
typedef int server_baton_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int do_change_rev_prop (int *,int *,int ,char const*,int *,int *,int *) ;
 int svn_ra_svn__parse_tuple (int *,char*,int *,char const**,int **) ;

__attribute__((used)) static svn_error_t *
change_rev_prop(svn_ra_svn_conn_t *conn,
                apr_pool_t *pool,
                svn_ra_svn__list_t *params,
                void *baton)
{
  server_baton_t *b = baton;
  svn_revnum_t rev;
  const char *name;
  svn_string_t *value;



  SVN_ERR(svn_ra_svn__parse_tuple(params, "rc?s", &rev, &name, &value));

  SVN_ERR(do_change_rev_prop(conn, b, rev, name, ((void*)0), value, pool));

  return SVN_NO_ERROR;
}

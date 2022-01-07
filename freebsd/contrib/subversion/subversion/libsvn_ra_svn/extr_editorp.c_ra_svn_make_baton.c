
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_ra_svn_conn_t ;
typedef int ra_svn_edit_baton_t ;
struct TYPE_4__ {int * token; int * eb; int * pool; int * conn; } ;
typedef TYPE_1__ ra_svn_baton_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

__attribute__((used)) static ra_svn_baton_t *ra_svn_make_baton(svn_ra_svn_conn_t *conn,
                                         apr_pool_t *pool,
                                         ra_svn_edit_baton_t *eb,
                                         svn_string_t *token)
{
  ra_svn_baton_t *b;

  b = apr_palloc(pool, sizeof(*b));
  b->conn = conn;
  b->pool = pool;
  b->eb = eb;
  b->token = token;
  return b;
}

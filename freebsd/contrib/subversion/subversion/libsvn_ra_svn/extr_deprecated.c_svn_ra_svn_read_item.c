
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_item_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_ra_svn__item_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_pcalloc (int *,int) ;
 int svn_ra_svn__read_item (int *,int *,int **) ;
 int svn_ra_svn__to_public_item (int *,int *,int *) ;

svn_error_t *
svn_ra_svn_read_item(svn_ra_svn_conn_t *conn,
                     apr_pool_t *pool,
                     svn_ra_svn_item_t **item)
{
  svn_ra_svn__item_t *temp;
  SVN_ERR(svn_ra_svn__read_item(conn, pool, &temp));
  *item = apr_pcalloc(pool, sizeof(**item));
  svn_ra_svn__to_public_item(*item, temp, pool);

  return SVN_NO_ERROR;
}

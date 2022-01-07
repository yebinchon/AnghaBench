
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int apr_socket_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int * svn_ra_svn_create_conn3 (int *,int *,int *,int ,int ,int ,int *) ;

svn_ra_svn_conn_t *
svn_ra_svn_create_conn(apr_socket_t *sock,
                       apr_file_t *in_file,
                       apr_file_t *out_file,
                       apr_pool_t *pool)
{
  return svn_ra_svn_create_conn3(sock, in_file, out_file,
                                 SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, 0, 0,
                                 pool);
}

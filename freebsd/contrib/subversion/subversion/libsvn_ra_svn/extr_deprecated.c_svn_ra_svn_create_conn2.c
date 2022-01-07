
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_svn_conn_t ;
typedef int apr_socket_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * svn_ra_svn_create_conn3 (int *,int *,int *,int,int ,int ,int *) ;

svn_ra_svn_conn_t *
svn_ra_svn_create_conn2(apr_socket_t *sock,
                        apr_file_t *in_file,
                        apr_file_t *out_file,
                        int compression_level,
                        apr_pool_t *pool)
{
  return svn_ra_svn_create_conn3(sock, in_file, out_file,
                                 compression_level, 0, 0, pool);
}

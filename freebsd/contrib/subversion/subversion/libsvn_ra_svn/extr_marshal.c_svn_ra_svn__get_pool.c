
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pool; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int apr_pool_t ;



apr_pool_t *
svn_ra_svn__get_pool(svn_ra_svn_conn_t *conn)
{
  return conn->pool;
}

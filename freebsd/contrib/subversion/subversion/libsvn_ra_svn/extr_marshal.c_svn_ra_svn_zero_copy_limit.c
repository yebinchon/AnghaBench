
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zero_copy_limit; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int apr_size_t ;



apr_size_t
svn_ra_svn_zero_copy_limit(svn_ra_svn_conn_t *conn)
{
  return conn->zero_copy_limit;
}

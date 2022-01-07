
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compression_level; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;



int
svn_ra_svn_compression_level(svn_ra_svn_conn_t *conn)
{
  return conn->compression_level;
}

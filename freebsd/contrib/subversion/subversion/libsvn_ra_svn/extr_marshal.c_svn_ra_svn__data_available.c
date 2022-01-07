
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int * svn_ra_svn__stream_data_available (int ,int *) ;

svn_error_t *svn_ra_svn__data_available(svn_ra_svn_conn_t *conn,
                                       svn_boolean_t *data_available)
{
  return svn_ra_svn__stream_data_available(conn->stream, data_available);
}

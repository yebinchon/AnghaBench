
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; void* block_baton; int block_handler; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;
typedef int ra_svn_block_handler_t ;


 int get_timeout (TYPE_1__*) ;
 int svn_ra_svn__stream_timeout (int ,int ) ;

void
svn_ra_svn__set_block_handler(svn_ra_svn_conn_t *conn,
                              ra_svn_block_handler_t handler,
                              void *baton)
{
  conn->block_handler = handler;
  conn->block_baton = baton;
  svn_ra_svn__stream_timeout(conn->stream, get_timeout(conn));
}

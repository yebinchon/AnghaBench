
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current_out; scalar_t__ current_in; } ;
typedef TYPE_1__ svn_ra_svn_conn_t ;



void
svn_ra_svn__reset_command_io_counters(svn_ra_svn_conn_t *conn)
{
  conn->current_in = 0;
  conn->current_out = 0;
}

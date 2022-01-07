
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int scheduled; TYPE_1__* conn; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
struct TYPE_4__ {int conn; } ;


 int FALSE ;
 int serf_connection_reset (int ) ;

void
svn_ra_serf__unschedule_handler(svn_ra_serf__handler_t *handler)
{
  serf_connection_reset(handler->conn->conn);
  handler->scheduled = FALSE;
}

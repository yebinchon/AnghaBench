
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ version; } ;
struct TYPE_8__ {TYPE_2__* conn; scalar_t__ scheduled; void* discard_body; void* reading_body; int * location; TYPE_1__ sline; int * server_error; void* done; int * handler_pool; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
struct TYPE_7__ {int conn; } ;


 void* FALSE ;
 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 scalar_t__ TRUE ;
 int serf_connection_request_create (int ,int ,TYPE_3__*) ;
 int setup_request_cb ;

void
svn_ra_serf__request_create(svn_ra_serf__handler_t *handler)
{
  SVN_ERR_ASSERT_NO_RETURN(handler->handler_pool != ((void*)0)
                           && !handler->scheduled);


  handler->done = FALSE;
  handler->server_error = ((void*)0);
  handler->sline.version = 0;
  handler->location = ((void*)0);
  handler->reading_body = FALSE;
  handler->discard_body = FALSE;
  handler->scheduled = TRUE;
  (void) serf_connection_request_create(handler->conn->conn,
                                        setup_request_cb, handler);
}

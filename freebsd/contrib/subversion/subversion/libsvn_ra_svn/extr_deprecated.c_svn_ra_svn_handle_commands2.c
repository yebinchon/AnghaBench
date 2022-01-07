
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_ra_svn_conn_t ;
struct TYPE_6__ {int terminate; int handler; scalar_t__ cmdname; } ;
typedef TYPE_1__ svn_ra_svn_cmd_entry_t ;
struct TYPE_7__ {int terminate; int deprecated_handler; int * handler; scalar_t__ cmdname; } ;
typedef TYPE_2__ svn_ra_svn__cmd_entry_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pcalloc (int *,size_t) ;
 int * svn_error_trace (int ) ;
 int svn_ra_svn__handle_commands2 (int *,int *,TYPE_2__*,void*,int ) ;

svn_error_t *
svn_ra_svn_handle_commands2(svn_ra_svn_conn_t *conn,
                            apr_pool_t *pool,
                            const svn_ra_svn_cmd_entry_t *commands,
                            void *baton,
                            svn_boolean_t error_on_disconnect)
{
  apr_size_t i, count = 0;
  svn_ra_svn__cmd_entry_t *internal;

  while (commands[count].cmdname)
    count++;

  internal = apr_pcalloc(pool, count * sizeof(*internal));
  for (i = 0; i < count; ++i)
    {
      internal[i].cmdname = commands[i].cmdname;
      internal[i].handler = ((void*)0);
      internal[i].deprecated_handler = commands[i].handler;
      internal[i].terminate = commands[i].terminate;
    }

  return svn_error_trace(svn_ra_svn__handle_commands2(conn, pool,
                                                      internal, baton,
                                                      error_on_disconnect));
}

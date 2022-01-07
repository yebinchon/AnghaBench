
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; } ;
typedef TYPE_1__ terminal_handle_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_status_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int apr_pool_cleanup_kill (int ,TYPE_1__*,int ) ;
 int * svn_error_create (scalar_t__,int *,int ) ;
 scalar_t__ terminal_cleanup_handler (TYPE_1__*,int ,int ) ;
 int terminal_plain_cleanup ;

__attribute__((used)) static svn_error_t *
terminal_close(terminal_handle_t *terminal)
{
  apr_status_t status;


  apr_pool_cleanup_kill(terminal->pool, terminal, terminal_plain_cleanup);

  status = terminal_cleanup_handler(terminal, TRUE, TRUE);
  if (status)
    return svn_error_create(status, ((void*)0), _("Can't close terminal"));
  return SVN_NO_ERROR;
}

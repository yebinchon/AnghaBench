
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct termios {char* c_cc; } ;
struct TYPE_7__ {int infd; int outfd; struct termios attr; scalar_t__ restore_state; int noecho; } ;
typedef TYPE_2__ terminal_handle_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int f; } ;
struct TYPE_8__ {int reqevents; int rtnevents; int * p; TYPE_1__ desc; int desc_type; } ;
typedef TYPE_3__ apr_pollfd_t ;


 int APR_POLLIN ;
 int APR_POLL_FILE ;
 scalar_t__ APR_STATUS_IS_EINTR (scalar_t__) ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;

 int SIGTSTP ;
 int SVN_ERR_CANCELLED ;
 int * SVN_NO_ERROR ;
 int TERMINAL_DEL ;
 int TERMINAL_EOF ;
 int TERMINAL_EOL ;
 int TERMINAL_NONE ;
 size_t VEOF ;
 size_t VEOL ;
 size_t VERASE ;
 size_t VINTR ;
 size_t VQUIT ;
 size_t VSUSP ;
 int _ (char*) ;
 int _cputs (char*) ;
 int _getch () ;
 int _putch (char) ;
 scalar_t__ apr_file_getc (char*,int ) ;
 int apr_file_putc (char,int ) ;
 int apr_iscntrl (char) ;
 scalar_t__ apr_poll (TYPE_3__*,int,int*,int) ;
 int echo_control_char (char,int ) ;
 int kill (int ,int ) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_wrap_apr (scalar_t__,int ) ;

__attribute__((used)) static svn_error_t *
terminal_getc(int *code, terminal_handle_t *terminal,
              svn_boolean_t can_erase, apr_pool_t *pool)
{
  const svn_boolean_t echo = !terminal->noecho;
  apr_status_t status = APR_SUCCESS;
  char ch;
  {
    apr_pollfd_t pollset;
    int n;

    pollset.desc_type = APR_POLL_FILE;
    pollset.desc.f = terminal->infd;
    pollset.p = pool;
    pollset.reqevents = APR_POLLIN;

    status = apr_poll(&pollset, 1, &n, -1);

    if (n == 1 && pollset.rtnevents & APR_POLLIN)
      status = APR_SUCCESS;
  }


  if (!status)
    status = apr_file_getc(&ch, terminal->infd);
  if (APR_STATUS_IS_EINTR(status))
    {
      *code = TERMINAL_NONE;
      return SVN_NO_ERROR;
    }
  else if (APR_STATUS_IS_EOF(status))
    {
      *code = TERMINAL_EOF;
      return SVN_NO_ERROR;
    }
  else if (status)
    return svn_error_wrap_apr(status, _("Can't read from terminal"));

  *code = (int)(unsigned char)ch;
  return SVN_NO_ERROR;
}

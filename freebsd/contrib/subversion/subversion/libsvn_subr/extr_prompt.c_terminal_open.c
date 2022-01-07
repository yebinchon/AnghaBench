
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct termios {int c_lflag; int* c_cc; } ;
struct TYPE_6__ {int pool; void* restore_state; void* noecho; int osinfd; struct termios attr; int infd; } ;
typedef TYPE_1__ terminal_handle_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
typedef scalar_t__ HANDLE ;


 int APR_FOPEN_READ ;
 int APR_FOPEN_WRITE ;
 int APR_OS_DEFAULT ;
 int CloseHandle (scalar_t__ const) ;
 scalar_t__ CreateFileW (char*,int ,int,int *,int ,int ,int *) ;
 int ECHO ;
 void* FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 int ICANON ;
 scalar_t__ const INVALID_HANDLE_VALUE ;
 int ISIG ;
 int OPEN_EXISTING ;
 int * SVN_NO_ERROR ;
 int TCSAFLUSH ;
 void* TRUE ;
 size_t VMIN ;
 size_t VTIME ;
 int _ (char*) ;
 int apr_file_open (int **,char*,int,int ,int *) ;
 int apr_file_open_stderr (int **,int *) ;
 int apr_file_open_stdin (int **,int *) ;
 scalar_t__ apr_os_file_get (int *,int ) ;
 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pool_cleanup_register (int ,TYPE_1__*,int ,int ) ;
 int * svn_error_wrap_apr (int ,int ) ;
 scalar_t__ tcgetattr (int ,struct termios*) ;
 scalar_t__ tcsetattr (int ,int ,struct termios*) ;
 int terminal_child_cleanup ;
 int terminal_handle_init (TYPE_1__*,int *,int *,void*,void*,int *) ;
 int terminal_plain_cleanup ;

__attribute__((used)) static svn_error_t *
terminal_open(terminal_handle_t **terminal, svn_boolean_t noecho,
              apr_pool_t *pool)
{
  apr_status_t status;
  apr_file_t *tmpfd;
  status = apr_file_open(&tmpfd, "/dev/tty",
                         APR_FOPEN_READ | APR_FOPEN_WRITE,
                         APR_OS_DEFAULT, pool);
  *terminal = apr_palloc(pool, sizeof(terminal_handle_t));
  if (!status)
    {

      terminal_handle_init(*terminal, tmpfd, tmpfd, FALSE, TRUE, pool);
    }

  else
    {

      apr_file_t *infd;
      apr_file_t *outfd;

      status = apr_file_open_stdin(&infd, pool);
      if (status)
        return svn_error_wrap_apr(status, _("Can't open stdin"));
      status = apr_file_open_stderr(&outfd, pool);
      if (status)
        return svn_error_wrap_apr(status, _("Can't open stderr"));
      terminal_handle_init(*terminal, infd, outfd, FALSE, FALSE, pool);
    }
  apr_pool_cleanup_register((*terminal)->pool, *terminal,
                            terminal_plain_cleanup,
                            terminal_child_cleanup);
  return SVN_NO_ERROR;
}

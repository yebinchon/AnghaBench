#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct termios {int c_lflag; int* c_cc; } ;
struct TYPE_6__ {int /*<<< orphan*/  pool; void* restore_state; void* noecho; int /*<<< orphan*/  osinfd; struct termios attr; int /*<<< orphan*/  infd; } ;
typedef  TYPE_1__ terminal_handle_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  void* svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int APR_FOPEN_READ ; 
 int APR_FOPEN_WRITE ; 
 int /*<<< orphan*/  APR_OS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ECHO ; 
 void* FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int ICANON ; 
 scalar_t__ const INVALID_HANDLE_VALUE ; 
 int ISIG ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 void* TRUE ; 
 size_t VMIN ; 
 size_t VTIME ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct termios*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  terminal_child_cleanup ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  terminal_plain_cleanup ; 

__attribute__((used)) static svn_error_t *
FUNC13(terminal_handle_t **terminal, svn_boolean_t noecho,
              apr_pool_t *pool)
{
  apr_status_t status;

#ifdef WIN32
  /* On Windows, we'll use the console API directly if the process has
     a console attached; otherwise we'll just use stdin and stderr. */
  const HANDLE conin = CreateFileW(L"CONIN$", GENERIC_READ,
                                   FILE_SHARE_READ | FILE_SHARE_WRITE,
                                   NULL, OPEN_EXISTING,
                                   FILE_ATTRIBUTE_NORMAL, NULL);
  *terminal = apr_palloc(pool, sizeof(terminal_handle_t));
  if (conin != INVALID_HANDLE_VALUE)
    {
      /* The process has a console. */
      CloseHandle(conin);
      terminal_handle_init(*terminal, NULL, NULL, noecho, FALSE, NULL);
      return SVN_NO_ERROR;
    }
#else  /* !WIN32 */
  /* Without evidence to the contrary, we'll assume this is *nix and
     try to open /dev/tty. If that fails, we'll use stdin for input
     and stderr for prompting. */
  apr_file_t *tmpfd;
  status = FUNC3(&tmpfd, "/dev/tty",
                         APR_FOPEN_READ | APR_FOPEN_WRITE,
                         APR_OS_DEFAULT, pool);
  *terminal = FUNC7(pool, sizeof(terminal_handle_t));
  if (!status)
    {
      /* We have a terminal handle that we can use for input and output. */
      FUNC12(*terminal, tmpfd, tmpfd, FALSE, TRUE, pool);
    }
#endif /* !WIN32 */
  else
    {
      /* There is no terminal. Sigh. */
      apr_file_t *infd;
      apr_file_t *outfd;

      status = FUNC5(&infd, pool);
      if (status)
        return FUNC9(status, FUNC2("Can't open stdin"));
      status = FUNC4(&outfd, pool);
      if (status)
        return FUNC9(status, FUNC2("Can't open stderr"));
      FUNC12(*terminal, infd, outfd, FALSE, FALSE, pool);
    }

#ifdef HAVE_TERMIOS_H
  /* Set terminal state */
  if (0 == apr_os_file_get(&(*terminal)->osinfd, (*terminal)->infd))
    {
      if (0 == tcgetattr((*terminal)->osinfd, &(*terminal)->attr))
        {
          struct termios attr = (*terminal)->attr;
          /* Turn off signal handling and canonical input mode */
          attr.c_lflag &= ~(ISIG | ICANON);
          attr.c_cc[VMIN] = 1;          /* Read one byte at a time */
          attr.c_cc[VTIME] = 0;         /* No timeout, wait indefinitely */
          attr.c_lflag &= ~(ECHO);      /* Turn off echo */
          if (0 == tcsetattr((*terminal)->osinfd, TCSAFLUSH, &attr))
            {
              (*terminal)->noecho = noecho;
              (*terminal)->restore_state = TRUE;
            }
        }
    }
#endif /* HAVE_TERMIOS_H */

  /* Register pool cleanup to close handles and restore echo state. */
  FUNC8((*terminal)->pool, *terminal,
                            terminal_plain_cleanup,
                            terminal_child_cleanup);
  return SVN_NO_ERROR;
}
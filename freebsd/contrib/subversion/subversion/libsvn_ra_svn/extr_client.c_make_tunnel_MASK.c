#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_ra_svn_conn_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_procattr_t ;
struct TYPE_5__ {int /*<<< orphan*/  in; int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ apr_proc_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_KILL_NEVER ; 
 int /*<<< orphan*/  APR_KILL_ONLY_ONCE ; 
 int /*<<< orphan*/  APR_PROGRAM_PATH ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  SVN_ERR_RA_CANNOT_CREATE_TUNNEL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char const*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_child_process_error ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC15(const char **args, svn_ra_svn_conn_t **conn,
                                apr_pool_t *pool)
{
  apr_status_t status;
  apr_proc_t *proc;
  apr_procattr_t *attr;
  svn_error_t *err;

  status = FUNC7(&attr, pool);
  if (status == APR_SUCCESS)
    status = FUNC8(attr, 1, 1, 0);
  if (status == APR_SUCCESS)
    status = FUNC6(attr, APR_PROGRAM_PATH);
  if (status == APR_SUCCESS)
    status = FUNC5(attr, handle_child_process_error);
  proc = FUNC2(pool, sizeof(*proc));
  if (status == APR_SUCCESS)
    status = FUNC4(proc, *args, args, NULL, attr, pool);
  if (status != APR_SUCCESS)
    return FUNC9(SVN_ERR_RA_CANNOT_CREATE_TUNNEL,
                            FUNC11(status,
                                               FUNC0("Can't create tunnel")), NULL);

  /* Arrange for the tunnel agent to get a SIGTERM on pool
   * cleanup.  This is a little extreme, but the alternatives
   * weren't working out.
   *
   * Closing the pipes and waiting for the process to die
   * was prone to mysterious hangs which are difficult to
   * diagnose (e.g. svnserve dumps core due to unrelated bug;
   * sshd goes into zombie state; ssh connection is never
   * closed; ssh never terminates).
   * See also the long dicussion in issue #2580 if you really
   * want to know various reasons for these problems and
   * the different opinions on this issue.
   *
   * On Win32, APR does not support KILL_ONLY_ONCE. It only has
   * KILL_ALWAYS and KILL_NEVER. Other modes are converted to
   * KILL_ALWAYS, which immediately calls TerminateProcess().
   * This instantly kills the tunnel, leaving sshd and svnserve
   * on a remote machine running indefinitely. These processes
   * accumulate. The problem is most often seen with a fast client
   * machine and a modest internet connection, as the tunnel
   * is killed before being able to gracefully complete the
   * session. In that case, svn is unusable 100% of the time on
   * the windows machine. Thus, on Win32, we use KILL_NEVER and
   * take the lesser of two evils.
   */
#ifdef WIN32
  apr_pool_note_subprocess(pool, proc, APR_KILL_NEVER);
#else
  FUNC3(pool, proc, APR_KILL_ONLY_ONCE);
#endif

  /* APR pipe objects inherit by default.  But we don't want the
   * tunnel agent's pipes held open by future child processes
   * (such as other ra_svn sessions), so turn that off. */
  FUNC1(proc->in);
  FUNC1(proc->out);

  /* Guard against dotfile output to stdout on the server. */
  *conn = FUNC13(NULL,
                                  FUNC14(proc->out, FALSE,
                                                           pool),
                                  FUNC14(proc->in, FALSE,
                                                           pool),
                                  SVN_DELTA_COMPRESSION_LEVEL_DEFAULT,
                                  0, 0, 0, 0, pool);
  err = FUNC12(*conn, pool);
  if (err)
    return FUNC10(
             err,
             FUNC0("To better debug SSH connection problems, remove the -q "
               "option from 'ssh' in the [tunnels] section of your "
               "Subversion configuration file."));

  return SVN_NO_ERROR;
}
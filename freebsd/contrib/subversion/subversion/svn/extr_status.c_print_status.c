
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
struct TYPE_22__ {int node_status; int prop_status; char* local_abspath; char const* revision; scalar_t__ repos_node_status; char const* changed_rev; char* changed_author; TYPE_2__* lock; scalar_t__ copied; scalar_t__ wc_is_locked; scalar_t__ versioned; TYPE_1__* repos_lock; scalar_t__ moved_to_abspath; scalar_t__ moved_from_abspath; scalar_t__ conflicted; } ;
typedef TYPE_4__ svn_client_status_t ;
struct TYPE_23__ {int wc_ctx; } ;
typedef TYPE_5__ svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef scalar_t__ svn_boolean_t ;
typedef enum svn_wc_status_kind { ____Placeholder_svn_wc_status_kind } svn_wc_status_kind ;
typedef int apr_pool_t ;
struct TYPE_20__ {scalar_t__ token; } ;
struct TYPE_19__ {scalar_t__ token; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 scalar_t__ SVN_ERR_WC_UPGRADE_REQUIRED ;
 scalar_t__ SVN_IS_VALID_REVNUM (char const*) ;
 int SVN_VA_NULL ;
 scalar_t__ TRUE ;
 char* _ (char*) ;
 char* apr_psprintf (int *,char*,char const*) ;
 char* apr_pstrcat (int *,char*,char*,int ) ;
 int combined_status (TYPE_4__ const*) ;
 int generate_status_code (int) ;
 int generate_switch_column_code (TYPE_4__ const*) ;
 char* make_relpath (char const*,char const*,scalar_t__,int *,int *) ;
 int stdout ;
 scalar_t__ strcmp (scalar_t__,scalar_t__) ;
 TYPE_3__* svn_cl__get_human_readable_tree_conflict_description (char const**,int *,int *) ;
 TYPE_3__* svn_client_conflict_get (int **,char const*,TYPE_5__*,int *,int *) ;
 TYPE_3__* svn_cmdline_fflush (int ) ;
 TYPE_3__* svn_cmdline_printf (int *,char*,int ,int ,char,char,int ,char,char,...) ;
 char* svn_dirent_local_style (char const*,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_wc_conflicted_p3 (scalar_t__*,scalar_t__*,scalar_t__*,int ,char const*,int *) ;
 int svn_wc_status_added ;
 scalar_t__ svn_wc_status_none ;

__attribute__((used)) static svn_error_t *
print_status(const char *target_abspath,
             const char *target_path,
             const char *path,
             svn_boolean_t detailed,
             svn_boolean_t show_last_committed,
             svn_boolean_t repos_locks,
             const svn_client_status_t *status,
             unsigned int *text_conflicts,
             unsigned int *prop_conflicts,
             unsigned int *tree_conflicts,
             svn_client_ctx_t *ctx,
             apr_pool_t *pool)
{
  enum svn_wc_status_kind node_status = status->node_status;
  enum svn_wc_status_kind prop_status = status->prop_status;
  char tree_status_code = ' ';
  const char *tree_desc_line = "";
  const char *moved_from_line = "";
  const char *moved_to_line = "";
  if (node_status == svn_wc_status_added)
      prop_status = svn_wc_status_none;





  if (status->conflicted)
    {
      const char *desc;
      const char *local_abspath = status->local_abspath;
      svn_boolean_t text_conflicted;
      svn_boolean_t prop_conflicted;
      svn_boolean_t tree_conflicted;

      if (status->versioned)
        {
          svn_error_t *err;

          err = svn_wc_conflicted_p3(&text_conflicted,
                                     &prop_conflicted,
                                     &tree_conflicted, ctx->wc_ctx,
                                     local_abspath, pool);

          if (err && err->apr_err == SVN_ERR_WC_UPGRADE_REQUIRED)
            {
              svn_error_clear(err);
              text_conflicted = FALSE;
              prop_conflicted = FALSE;
              tree_conflicted = FALSE;
            }
          else
            SVN_ERR(err);
        }
      else
        {
          text_conflicted = FALSE;
          prop_conflicted = FALSE;
          tree_conflicted = TRUE;
        }

      if (tree_conflicted)
        {
          svn_client_conflict_t *tree_conflict;

          SVN_ERR(svn_client_conflict_get(&tree_conflict, local_abspath,
                                          ctx, pool, pool));
          tree_status_code = 'C';
          SVN_ERR(svn_cl__get_human_readable_tree_conflict_description(
                            &desc, tree_conflict, pool));
          tree_desc_line = apr_psprintf(pool, "\n      >   %s", desc);
          (*tree_conflicts)++;
        }
      else if (text_conflicted)
        (*text_conflicts)++;
      else if (prop_conflicted)
        (*prop_conflicts)++;
    }




  if (status->moved_from_abspath && status->moved_to_abspath &&
      strcmp(status->moved_from_abspath, status->moved_to_abspath) == 0)
    {
      const char *relpath;

      relpath = make_relpath(target_abspath, target_path,
                             status->moved_from_abspath,
                             pool, pool);
      relpath = svn_dirent_local_style(relpath, pool);
      moved_from_line = apr_pstrcat(pool, "\n        > ",
                                    apr_psprintf(pool,
                                                 _("swapped places with %s"),
                                                 relpath),
                                    SVN_VA_NULL);
    }
  else if (status->moved_from_abspath || status->moved_to_abspath)
    {
      const char *relpath;

      if (status->moved_from_abspath)
        {
          relpath = make_relpath(target_abspath, target_path,
                                 status->moved_from_abspath,
                                 pool, pool);
          relpath = svn_dirent_local_style(relpath, pool);
          moved_from_line = apr_pstrcat(pool, "\n        > ",
                                        apr_psprintf(pool, _("moved from %s"),
                                                     relpath),
                                        SVN_VA_NULL);
        }

      if (status->moved_to_abspath)
        {
          relpath = make_relpath(target_abspath, target_path,
                                 status->moved_to_abspath,
                                 pool, pool);
          relpath = svn_dirent_local_style(relpath, pool);
          moved_to_line = apr_pstrcat(pool, "\n        > ",
                                      apr_psprintf(pool, _("moved to %s"),
                                                   relpath),
                                      SVN_VA_NULL);
        }
    }

  path = svn_dirent_local_style(path, pool);

  if (detailed)
    {
      char ood_status, lock_status;
      const char *working_rev;

      if (! status->versioned)
        working_rev = "";
      else if (status->copied
               || ! SVN_IS_VALID_REVNUM(status->revision))
        working_rev = "-";
      else
        working_rev = apr_psprintf(pool, "%ld", status->revision);

      if (status->repos_node_status != svn_wc_status_none)
        ood_status = '*';
      else
        ood_status = ' ';

      if (repos_locks)
        {
          if (status->repos_lock)
            {
              if (status->lock)
                {
                  if (strcmp(status->repos_lock->token, status->lock->token)
                      == 0)
                    lock_status = 'K';
                  else
                    lock_status = 'T';
                }
              else
                lock_status = 'O';
            }
          else if (status->lock)
            lock_status = 'B';
          else
            lock_status = ' ';
        }
      else
        lock_status = (status->lock) ? 'K' : ' ';

      if (show_last_committed)
        {
          const char *commit_rev;
          const char *commit_author;

          if (SVN_IS_VALID_REVNUM(status->changed_rev))
            commit_rev = apr_psprintf(pool, "%ld", status->changed_rev);
          else if (status->versioned)
            commit_rev = " ? ";
          else
            commit_rev = "";

          if (status->changed_author)
            commit_author = status->changed_author;
          else if (status->versioned)
            commit_author = " ? ";
          else
            commit_author = "";

          SVN_ERR
            (svn_cmdline_printf(pool,
                                "%c%c%c%c%c%c%c %c %8s %8s %-12s %s%s%s%s\n",
                                generate_status_code(combined_status(status)),
                                generate_status_code(prop_status),
                                status->wc_is_locked ? 'L' : ' ',
                                status->copied ? '+' : ' ',
                                generate_switch_column_code(status),
                                lock_status,
                                tree_status_code,
                                ood_status,
                                working_rev,
                                commit_rev,
                                commit_author,
                                path,
                                moved_to_line,
                                moved_from_line,
                                tree_desc_line));
        }
      else
        SVN_ERR(
           svn_cmdline_printf(pool, "%c%c%c%c%c%c%c %c %8s   %s%s%s%s\n",
                              generate_status_code(combined_status(status)),
                              generate_status_code(prop_status),
                              status->wc_is_locked ? 'L' : ' ',
                              status->copied ? '+' : ' ',
                              generate_switch_column_code(status),
                              lock_status,
                              tree_status_code,
                              ood_status,
                              working_rev,
                              path,
                              moved_to_line,
                              moved_from_line,
                              tree_desc_line));
    }
  else
    SVN_ERR(
       svn_cmdline_printf(pool, "%c%c%c%c%c%c%c %s%s%s%s\n",
                          generate_status_code(combined_status(status)),
                          generate_status_code(prop_status),
                          status->wc_is_locked ? 'L' : ' ',
                          status->copied ? '+' : ' ',
                          generate_switch_column_code(status),
                          ((status->lock)
                           ? 'K' : ' '),
                          tree_status_code,
                          path,
                          moved_to_line,
                          moved_from_line,
                          tree_desc_line));

  return svn_cmdline_fflush(stdout);
}

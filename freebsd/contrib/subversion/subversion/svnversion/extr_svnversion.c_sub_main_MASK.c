#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {char* min_rev; char* max_rev; scalar_t__ sparse_checkout; scalar_t__ switched; scalar_t__ modified; } ;
typedef  TYPE_1__ svn_wc_revision_status_t ;
typedef  int /*<<< orphan*/  svn_wc_context_t ;
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_28__ {scalar_t__ apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_29__ {int interleave; int ind; char** argv; } ;
typedef  TYPE_3__ apr_getopt_t ;
struct TYPE_30__ {char* member_0; char member_1; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; } ;
typedef  TYPE_4__ apr_getopt_option_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ APR_SUCCESS ; 
 int EXIT_FAILURE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  SVNVERSION_OPT_VERSION 128 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_4__ const*,int*,char const**) ; 
 TYPE_2__* FUNC6 () ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_2__* FUNC9 (TYPE_3__**,int,char const**,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ *,char*,char*) ; 
 TYPE_2__* FUNC13 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_2__* FUNC16 (char const*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 
 TYPE_2__* FUNC17 (char const**,char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (char const**,char*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC20 (TYPE_1__**,int /*<<< orphan*/ *,char const*,char const*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC21 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC23 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC24(int *exit_code, int argc, const char *argv[], apr_pool_t *pool)
{
  const char *wc_path, *trail_url;
  const char *local_abspath;
  svn_wc_revision_status_t *res;
  svn_boolean_t no_newline = FALSE, committed = FALSE;
  svn_error_t *err;
  apr_getopt_t *os;
  svn_wc_context_t *wc_ctx;
  svn_boolean_t quiet = FALSE;
  svn_boolean_t is_version = FALSE;
  const apr_getopt_option_t options[] =
    {
      {"no-newline", 'n', 0, FUNC1("do not output the trailing newline")},
      {"committed",  'c', 0, FUNC1("last changed rather than current revisions")},
      {"help", 'h', 0, FUNC1("display this help")},
      {"version", SVNVERSION_OPT_VERSION, 0,
       FUNC1("show program version information")},
      {"quiet",         'q', 0,
       FUNC1("no progress (only errors) to stderr")},
      {0,             0,  0,  0}
    };

  /* Check library versions */
  FUNC2(FUNC6());

#if defined(WIN32) || defined(__CYGWIN__)
  /* Set the working copy administrative directory name. */
  if (getenv("SVN_ASP_DOT_NET_HACK"))
    {
      SVN_ERR(svn_wc_set_adm_dir("_svn", pool));
    }
#endif

  FUNC2(FUNC9(&os, argc, argv, pool));

  os->interleave = 1;
  while (1)
    {
      int opt;
      const char *arg;
      apr_status_t status = FUNC5(os, options, &opt, &arg);
      if (FUNC0(status))
        break;
      if (status != APR_SUCCESS)
        {
          *exit_code = EXIT_FAILURE;
          FUNC22(pool);
          return SVN_NO_ERROR;
        }

      switch (opt)
        {
        case 'n':
          no_newline = TRUE;
          break;
        case 'c':
          committed = TRUE;
          break;
        case 'q':
          quiet = TRUE;
          break;
        case 'h':
          FUNC8(options, pool);
          return SVN_NO_ERROR;
        case SVNVERSION_OPT_VERSION:
          is_version = TRUE;
          break;
        default:
          *exit_code = EXIT_FAILURE;
          FUNC22(pool);
          return SVN_NO_ERROR;
        }
    }

  if (is_version)
    {
      FUNC2(FUNC23(quiet, pool));
      return SVN_NO_ERROR;
    }
  if (os->ind > argc || os->ind < argc - 2)
    {
      *exit_code = EXIT_FAILURE;
      FUNC22(pool);
      return SVN_NO_ERROR;
    }

  FUNC2(FUNC18(&wc_path,
                                  (os->ind < argc) ? os->argv[os->ind] : ".",
                                  pool));

  FUNC2(FUNC17(&wc_path, wc_path, pool));
  FUNC2(FUNC13(&local_abspath, wc_path, pool));
  FUNC2(FUNC19(&wc_ctx, NULL, pool, pool));

  if (os->ind+1 < argc)
    FUNC2(FUNC18(&trail_url, os->argv[os->ind+1], pool));
  else
    trail_url = NULL;

  err = FUNC20(&res, wc_ctx, local_abspath, trail_url,
                                committed, NULL, NULL, pool, pool);

  if (err && (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND
              || err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY))
    {
      svn_node_kind_t kind;
      svn_boolean_t special;

      FUNC15(err);

      FUNC2(FUNC16(local_abspath, &kind, &special, pool));

      if (special)
        FUNC2(FUNC12(pool, FUNC4("Unversioned symlink%s"),
                                   no_newline ? "" : "\n"));
      else if (kind == svn_node_dir)
        FUNC2(FUNC12(pool, FUNC4("Unversioned directory%s"),
                                   no_newline ? "" : "\n"));
      else if (kind == svn_node_file)
        FUNC2(FUNC12(pool, FUNC4("Unversioned file%s"),
                                   no_newline ? "" : "\n"));
      else
        {
          FUNC2(FUNC10(stderr, pool,
                                      kind == svn_node_none
                                       ? FUNC4("'%s' doesn't exist\n")
                                       : FUNC4("'%s' is of unknown type\n"),
                                      FUNC14(local_abspath,
                                                             pool)));
          *exit_code = EXIT_FAILURE;
          return SVN_NO_ERROR;
        }
      return SVN_NO_ERROR;
    }

  FUNC2(err);

  if (! FUNC3(res->min_rev))
    {
      /* Local uncommitted modifications, no revision info was found. */
      FUNC2(FUNC12(pool, FUNC4("Uncommitted local addition, "
                                         "copy or move%s"),
                                 no_newline ? "" : "\n"));
      return SVN_NO_ERROR;
    }

  /* Build compact '123[:456]M?S?' string. */
  FUNC2(FUNC12(pool, "%ld", res->min_rev));
  if (res->min_rev != res->max_rev)
    FUNC2(FUNC12(pool, ":%ld", res->max_rev));
  if (res->modified)
    FUNC2(FUNC11("M", stdout, pool));
  if (res->switched)
    FUNC2(FUNC11("S", stdout, pool));
  if (res->sparse_checkout)
    FUNC2(FUNC11("P", stdout, pool));

  if (! no_newline)
    FUNC2(FUNC11("\n", stdout, pool));

  return SVN_NO_ERROR;
}
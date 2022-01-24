#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  kind; } ;
struct TYPE_10__ {int /*<<< orphan*/  kind; } ;
struct TYPE_13__ {char* target_dir; char* url; TYPE_2__ peg_revision; TYPE_1__ revision; } ;
typedef  TYPE_4__ svn_wc_external_item2_t ;
struct TYPE_14__ {int format; char* peg_rev_str; int /*<<< orphan*/  rev_str; } ;
typedef  TYPE_5__ svn_wc__externals_parser_info_t ;
struct TYPE_12__ {int /*<<< orphan*/  number; } ;
struct TYPE_15__ {TYPE_3__ value; int /*<<< orphan*/  kind; } ;
typedef  TYPE_6__ svn_opt_revision_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_EXTERNALS ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char const* FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svn_opt_revision_head ; 
 int /*<<< orphan*/  svn_opt_revision_number ; 
 int /*<<< orphan*/  svn_opt_revision_unspecified ; 
#define  svn_wc__external_description_format_1 129 
#define  svn_wc__external_description_format_2 128 

__attribute__((used)) static svn_error_t *
FUNC7(const char **new_external_description,
                          const char *local_abspath_or_url,
                          svn_wc_external_item2_t *item,
                          svn_wc__externals_parser_info_t *info,
                          svn_opt_revision_t external_pegrev,
                          apr_pool_t *pool)
{
  const char *rev_str;
  const char *peg_rev_str;

  switch (info->format)
    {
      case svn_wc__external_description_format_1:
        if (external_pegrev.kind == svn_opt_revision_unspecified)
          {
            /* If info->rev_str is NULL, this yields an empty string. */
            rev_str = FUNC3(pool, info->rev_str, " ", SVN_VA_NULL);
          }
        else if (info->rev_str && item->revision.kind != svn_opt_revision_head)
          rev_str = FUNC2(pool, "%s ", info->rev_str);
        else
          {
            /* ### can't handle svn_opt_revision_date without info->rev_str */
            FUNC0(external_pegrev.kind == svn_opt_revision_number);
            rev_str = FUNC2(pool, "-r%ld ",
                                   external_pegrev.value.number);
          }

        *new_external_description =
          FUNC2(pool, "%s %s%s\n", FUNC4(item->target_dir, pool),
                                          rev_str,
                                          FUNC4(item->url, pool));
        break;

      case svn_wc__external_description_format_2:
        if (external_pegrev.kind == svn_opt_revision_unspecified)
          {
            /* If info->rev_str is NULL, this yields an empty string. */
            rev_str = FUNC3(pool, info->rev_str, " ", SVN_VA_NULL);
          }
        else if (info->rev_str && item->revision.kind != svn_opt_revision_head)
          rev_str = FUNC2(pool, "%s ", info->rev_str);
        else
          rev_str = "";

        if (external_pegrev.kind == svn_opt_revision_unspecified)
          peg_rev_str = info->peg_rev_str ? info->peg_rev_str : "";
        else if (info->peg_rev_str &&
                 item->peg_revision.kind != svn_opt_revision_head)
          peg_rev_str = info->peg_rev_str;
        else
          {
            /* ### can't handle svn_opt_revision_date without info->rev_str */
            FUNC0(external_pegrev.kind == svn_opt_revision_number);
            peg_rev_str = FUNC2(pool, "@%ld",
                                       external_pegrev.value.number);
          }

        *new_external_description =
          FUNC2(pool, "%s%s %s\n", rev_str,
                       FUNC4(FUNC2(pool, "%s%s", item->url,
                                                peg_rev_str),
                                   pool),
                       FUNC4(item->target_dir, pool));
        break;

      default:
        return FUNC6(
                 SVN_ERR_CLIENT_INVALID_EXTERNALS_DESCRIPTION, NULL,
                 FUNC1("%s property defined at '%s' is using an unsupported "
                   "syntax"), SVN_PROP_EXTERNALS,
                 FUNC5(local_abspath_or_url, pool));
    }

  return SVN_NO_ERROR;
}
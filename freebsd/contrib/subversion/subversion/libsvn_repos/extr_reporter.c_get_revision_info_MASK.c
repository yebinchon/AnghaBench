#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int /*<<< orphan*/  rev; void* author; void* date; } ;
typedef  TYPE_2__ revision_info_t ;
typedef  int /*<<< orphan*/  rev ;
struct TYPE_11__ {int /*<<< orphan*/  revision_infos; int /*<<< orphan*/  pool; TYPE_1__* repos; } ;
typedef  TYPE_3__ report_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_9__ {int /*<<< orphan*/  fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_AUTHOR ; 
 int /*<<< orphan*/  SVN_PROP_REVISION_DATE ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static  svn_error_t *
FUNC7(report_baton_t *b,
                  svn_revnum_t rev,
                  revision_info_t** revision_info,
                  apr_pool_t *scratch_pool)
{
  apr_hash_t *r_props;
  svn_string_t *cdate, *author;
  revision_info_t* info;

  /* Try to find the info in the report's cache */
  info = FUNC1(b->revision_infos, &rev, sizeof(rev));
  if (!info)
    {
      /* Info is not available, yet.
         Get all revprops. */
      FUNC0(FUNC4(&r_props,
                                        b->repos->fs,
                                        rev,
                                        FALSE,
                                        scratch_pool,
                                        scratch_pool));

      /* Extract the committed-date. */
      cdate = FUNC5(r_props, SVN_PROP_REVISION_DATE);

      /* Extract the last-author. */
      author = FUNC5(r_props, SVN_PROP_REVISION_AUTHOR);

      /* Create a result object */
      info = FUNC3(b->pool, sizeof(*info));
      info->rev = rev;
      info->date = FUNC6(cdate, b->pool);
      info->author = FUNC6(author, b->pool);

      /* Cache it */
      FUNC2(b->revision_infos, &info->rev, sizeof(info->rev), info);
    }

  *revision_info = info;
  return SVN_NO_ERROR;
}
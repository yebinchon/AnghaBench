#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_skel_t ;
typedef  int svn_fs_path_change_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_6__ {int kind; char* path; scalar_t__ noderev_id; scalar_t__ text_mod; scalar_t__ prop_mod; } ;
typedef  TYPE_2__ change_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
#define  svn_fs_path_change_add 132 
#define  svn_fs_path_change_delete 131 
#define  svn_fs_path_change_modify 130 
#define  svn_fs_path_change_replace 129 
#define  svn_fs_path_change_reset 128 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_skel_t **skel_p,
                                 const change_t *change,
                                 apr_pool_t *pool)
{
  svn_skel_t *skel;
  svn_string_t *tmp_str;
  svn_fs_path_change_kind_t kind;

  /* Create the skel. */
  skel = FUNC3(pool);

  /* PROP-MOD */
  if (change->prop_mod)
    FUNC5(FUNC6("1", pool), skel);
  else
    FUNC5(FUNC4(NULL, 0, pool), skel);

  /* TEXT-MOD */
  if (change->text_mod)
    FUNC5(FUNC6("1", pool), skel);
  else
    FUNC5(FUNC4(NULL, 0, pool), skel);

  /* KIND */
  switch (change->kind)
    {
    case svn_fs_path_change_reset:
      FUNC5(FUNC6("reset", pool), skel);
      break;
    case svn_fs_path_change_add:
      FUNC5(FUNC6("add", pool), skel);
      break;
    case svn_fs_path_change_delete:
      FUNC5(FUNC6("delete", pool), skel);
      break;
    case svn_fs_path_change_replace:
      FUNC5(FUNC6("replace", pool), skel);
      break;
    case svn_fs_path_change_modify:
    default:
      FUNC5(FUNC6("modify", pool), skel);
      break;
    }

  /* NODE-REV-ID */
  if (change->noderev_id)
    {
      tmp_str = FUNC2(change->noderev_id, pool);
      FUNC5(FUNC4(tmp_str->data, tmp_str->len, pool),
                        skel);
    }
  else
    {
      FUNC5(FUNC4(NULL, 0, pool), skel);
    }

  /* PATH */
  FUNC5(FUNC6(change->path, pool), skel);

  /* "change" */
  FUNC5(FUNC6("change", pool), skel);

  /* Validate and return the skel. */
  if (! FUNC0(skel, &kind))
    return FUNC1("change");
  if (kind != change->kind)
    return FUNC1("change");
  *skel_p = skel;
  return SVN_NO_ERROR;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_7__ {char* URL; char* repos_root_URL; char* repos_UUID; char* last_changed_author; TYPE_1__* wc_info; int /*<<< orphan*/  last_changed_date; int /*<<< orphan*/  last_changed_rev; int /*<<< orphan*/  rev; int /*<<< orphan*/  kind; } ;
typedef  TYPE_2__ svn_client_info2_t ;
struct TYPE_8__ {int print_what; scalar_t__ start_new_line; int /*<<< orphan*/  path_prefix; int /*<<< orphan*/  target_is_path; int /*<<< orphan*/  multiple_targets; } ;
typedef  TYPE_3__ print_info_baton_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_6__ {char* wcroot_abspath; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
#define  info_item_kind 137 
#define  info_item_last_changed_author 136 
#define  info_item_last_changed_date 135 
#define  info_item_last_changed_rev 134 
#define  info_item_relative_url 133 
#define  info_item_repos_root_url 132 
#define  info_item_repos_uuid 131 
#define  info_item_revision 130 
#define  info_item_url 129 
#define  info_item_wc_root 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const* const,int /*<<< orphan*/ *) ; 
 char* FUNC4 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(void *baton,
                  const char *target,
                  const svn_client_info2_t *info,
                  apr_pool_t *pool)
{
  print_info_baton_t *const receiver_baton = baton;
  const char *const target_path =
    (!receiver_baton->multiple_targets ? NULL
     : (!receiver_baton->target_is_path ? info->URL
        : FUNC5(
            receiver_baton->path_prefix, target, pool)));

  if (receiver_baton->start_new_line)
    FUNC0(FUNC6("\n", stdout, pool));

  switch (receiver_baton->print_what)
    {
    case info_item_kind:
      FUNC0(FUNC3(FUNC7(info->kind),
                                     target_path, pool));
      break;

    case info_item_url:
      FUNC0(FUNC3(info->URL, target_path, pool));
      break;

    case info_item_relative_url:
      FUNC0(FUNC3(FUNC4(info, pool),
                                     target_path, pool));
      break;

    case info_item_repos_root_url:
      FUNC0(FUNC3(info->repos_root_URL, target_path, pool));
      break;

    case info_item_repos_uuid:
      FUNC0(FUNC3(info->repos_UUID, target_path, pool));
      break;

    case info_item_revision:
      FUNC0(FUNC2(info->rev, target_path, pool));
      break;

    case info_item_last_changed_rev:
      FUNC0(FUNC2(info->last_changed_rev,
                                       target_path, pool));
      break;

    case info_item_last_changed_date:
      FUNC0(FUNC3(
                  (!info->last_changed_date ? NULL
                   : FUNC8(info->last_changed_date, pool)),
                  target_path, pool));
      break;

    case info_item_last_changed_author:
      FUNC0(FUNC3(info->last_changed_author,
                                     target_path, pool));
      break;

    case info_item_wc_root:
      FUNC0(FUNC3(
                  (info->wc_info && info->wc_info->wcroot_abspath
                   ? info->wc_info->wcroot_abspath : NULL),
                  target_path, pool));
      break;

    default:
      FUNC1();
    }

  receiver_baton->start_new_line = TRUE;
  return SVN_NO_ERROR;
}
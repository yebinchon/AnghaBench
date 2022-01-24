#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
struct TYPE_8__ {int /*<<< orphan*/  second; int /*<<< orphan*/  revision; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ svn_fs_x__pair_cache_key_t ;
struct TYPE_9__ {int /*<<< orphan*/  revprop_cache; int /*<<< orphan*/  revprop_generation; } ;
typedef  TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef  TYPE_3__ svn_fs_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(apr_hash_t **properties,
              svn_fs_t *fs,
              svn_revnum_t revision,
              const svn_string_t *content,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  FUNC2(FUNC7(properties, content, result_pool),
            FUNC3(scratch_pool, "Failed to parse revprops for r%ld.",
                         revision));

  if (FUNC4(fs, scratch_pool))
    {
      svn_fs_x__data_t *ffd = fs->fsap_data;
      svn_fs_x__pair_cache_key_t key = { 0 };

      FUNC1(FUNC5(fs));

      key.revision = revision;
      key.second = ffd->revprop_generation;
      FUNC0(FUNC6(ffd->revprop_cache, &key, *properties,
                             scratch_pool));
    }

  return SVN_NO_ERROR;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* tag; scalar_t__ patch; } ;
typedef  TYPE_1__ svn_version_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_9__ {int major; int minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_COMPATIBLE_VERSION ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_PRE_1_4_COMPATIBLE ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_PRE_1_5_COMPATIBLE ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_PRE_1_6_COMPATIBLE ; 
 int /*<<< orphan*/  SVN_FS_CONFIG_PRE_1_8_COMPATIBLE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC6(svn_version_t **compatible_version,
                           apr_hash_t *config,
                           apr_pool_t *pool)
{
  svn_version_t *version;
  const char *compatible;

  /* set compatible version according to generic option.
     Make sure, we are always compatible to the current SVN version
     (or older). */
  compatible = FUNC3(config, SVN_FS_CONFIG_COMPATIBLE_VERSION);
  if (compatible)
    {
      FUNC0(FUNC5(&version,
                                                compatible, pool));
      FUNC1(version,
                      FUNC4()->major,
                      FUNC4()->minor);
    }
  else
    {
      version = FUNC2(pool, FUNC4(), sizeof(*version));
    }

  /* specific options take precedence.
     Let the lowest version compatibility requirement win */
  if (FUNC3(config, SVN_FS_CONFIG_PRE_1_4_COMPATIBLE))
    FUNC1(version, 1, 3);
  else if (FUNC3(config, SVN_FS_CONFIG_PRE_1_5_COMPATIBLE))
    FUNC1(version, 1, 4);
  else if (FUNC3(config, SVN_FS_CONFIG_PRE_1_6_COMPATIBLE))
    FUNC1(version, 1, 5);
  else if (FUNC3(config, SVN_FS_CONFIG_PRE_1_8_COMPATIBLE))
    FUNC1(version, 1, 7);

  /* we ignored the patch level and tag so far.
   * Give them a defined value. */
  version->patch = 0;
  version->tag = "";

  /* done here */
  *compatible_version = version;
  return SVN_NO_ERROR;
}
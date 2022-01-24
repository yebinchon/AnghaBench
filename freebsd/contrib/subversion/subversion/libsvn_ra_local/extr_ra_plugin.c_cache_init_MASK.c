#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
struct TYPE_4__ {int cache_size; } ;
typedef  TYPE_1__ svn_cache_config_t ;
typedef  int apr_uint64_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_CONFIG_CATEGORY_CONFIG ; 
 int /*<<< orphan*/  SVN_CONFIG_OPTION_MEMORY_CACHE_SIZE ; 
 int /*<<< orphan*/  SVN_CONFIG_SECTION_MISCELLANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static svn_error_t *
FUNC8(void *baton, apr_pool_t *pool)
{
  apr_hash_t *config_hash = baton;
  svn_config_t *config = NULL;
  const char *memory_cache_size_str;

  if (config_hash)
    config = FUNC7(config_hash, SVN_CONFIG_CATEGORY_CONFIG);
  FUNC4(config, &memory_cache_size_str, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_MEMORY_CACHE_SIZE, NULL);
  if (memory_cache_size_str)
    {
      apr_uint64_t memory_cache_size;
      svn_cache_config_t settings = *FUNC2();

      FUNC0(FUNC6(FUNC5(&memory_cache_size,
                                                       memory_cache_size_str),
                                   FUNC1("memory-cache-size invalid")));
      settings.cache_size = 1024 * 1024 * memory_cache_size;
      FUNC3(&settings);
    }

  return SVN_NO_ERROR;
}
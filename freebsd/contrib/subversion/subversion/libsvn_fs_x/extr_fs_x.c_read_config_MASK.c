#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int max_deltification_walk; int max_linear_deltification; int delta_compression_level; int revprop_pack_size; int block_size; int l2p_page_size; int p2l_page_size; int /*<<< orphan*/  fail_stop; int /*<<< orphan*/  memcache; int /*<<< orphan*/  pack_after_commit; int /*<<< orphan*/  compress_packed_revprops; int /*<<< orphan*/  rep_sharing_allowed; } ;
typedef  TYPE_1__ svn_fs_x__data_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_config_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_off_t ;
typedef  int apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OPTION_BLOCK_SIZE ; 
 int /*<<< orphan*/  CONFIG_OPTION_COMPRESSION_LEVEL ; 
 int /*<<< orphan*/  CONFIG_OPTION_COMPRESS_PACKED_REVPROPS ; 
 int /*<<< orphan*/  CONFIG_OPTION_ENABLE_REP_SHARING ; 
 int /*<<< orphan*/  CONFIG_OPTION_FAIL_STOP ; 
 int /*<<< orphan*/  CONFIG_OPTION_L2P_PAGE_SIZE ; 
 int /*<<< orphan*/  CONFIG_OPTION_MAX_DELTIFICATION_WALK ; 
 int /*<<< orphan*/  CONFIG_OPTION_MAX_LINEAR_DELTIFICATION ; 
 int /*<<< orphan*/  CONFIG_OPTION_P2L_PAGE_SIZE ; 
 int /*<<< orphan*/  CONFIG_OPTION_PACK_AFTER_COMMIT ; 
 int /*<<< orphan*/  CONFIG_OPTION_REVPROP_PACK_SIZE ; 
 int /*<<< orphan*/  CONFIG_SECTION_CACHES ; 
 int /*<<< orphan*/  CONFIG_SECTION_DEBUG ; 
 int /*<<< orphan*/  CONFIG_SECTION_DELTIFICATION ; 
 int /*<<< orphan*/  CONFIG_SECTION_IO ; 
 int /*<<< orphan*/  CONFIG_SECTION_PACKED_REVPROPS ; 
 int /*<<< orphan*/  CONFIG_SECTION_REP_SHARING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PATH_CONFIG ; 
 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ; 
 int /*<<< orphan*/  SVN_DELTA_COMPRESSION_LEVEL_MAX ; 
 int /*<<< orphan*/  SVN_DELTA_COMPRESSION_LEVEL_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SVN_FS_X_MAX_DELTIFICATION_WALK ; 
 int SVN_FS_X_MAX_LINEAR_DELTIFICATION ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC9(svn_fs_x__data_t *ffd,
            const char *fs_path,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_config_t *config;
  apr_int64_t compression_level;

  FUNC2(FUNC6(&config,
                           FUNC7(fs_path, PATH_CONFIG, scratch_pool),
                           FALSE, FALSE, FALSE, scratch_pool));

  /* Initialize ffd->rep_sharing_allowed. */
  FUNC2(FUNC4(config, &ffd->rep_sharing_allowed,
                              CONFIG_SECTION_REP_SHARING,
                              CONFIG_OPTION_ENABLE_REP_SHARING, TRUE));

  /* Initialize deltification settings in ffd. */
  FUNC2(FUNC5(config, &ffd->max_deltification_walk,
                               CONFIG_SECTION_DELTIFICATION,
                               CONFIG_OPTION_MAX_DELTIFICATION_WALK,
                               SVN_FS_X_MAX_DELTIFICATION_WALK));
  FUNC2(FUNC5(config, &ffd->max_linear_deltification,
                               CONFIG_SECTION_DELTIFICATION,
                               CONFIG_OPTION_MAX_LINEAR_DELTIFICATION,
                               SVN_FS_X_MAX_LINEAR_DELTIFICATION));
  FUNC2(FUNC5(config, &compression_level,
                               CONFIG_SECTION_DELTIFICATION,
                               CONFIG_OPTION_COMPRESSION_LEVEL,
                               SVN_DELTA_COMPRESSION_LEVEL_DEFAULT));
  ffd->delta_compression_level
    = (int)FUNC1(FUNC0(SVN_DELTA_COMPRESSION_LEVEL_NONE, compression_level),
                SVN_DELTA_COMPRESSION_LEVEL_MAX);

  /* Initialize revprop packing settings in ffd. */
  FUNC2(FUNC4(config, &ffd->compress_packed_revprops,
                              CONFIG_SECTION_PACKED_REVPROPS,
                              CONFIG_OPTION_COMPRESS_PACKED_REVPROPS,
                              TRUE));
  FUNC2(FUNC5(config, &ffd->revprop_pack_size,
                               CONFIG_SECTION_PACKED_REVPROPS,
                               CONFIG_OPTION_REVPROP_PACK_SIZE,
                               ffd->compress_packed_revprops
                                   ? 0x100
                                   : 0x40));

  ffd->revprop_pack_size *= 1024;

  /* I/O settings in ffd. */
  FUNC2(FUNC5(config, &ffd->block_size,
                               CONFIG_SECTION_IO,
                               CONFIG_OPTION_BLOCK_SIZE,
                               64));
  FUNC2(FUNC5(config, &ffd->l2p_page_size,
                               CONFIG_SECTION_IO,
                               CONFIG_OPTION_L2P_PAGE_SIZE,
                               0x2000));
  FUNC2(FUNC5(config, &ffd->p2l_page_size,
                               CONFIG_SECTION_IO,
                               CONFIG_OPTION_P2L_PAGE_SIZE,
                               0x400));

  /* Don't accept unreasonable or illegal values.
   * Block size and P2L page size are in kbytes;
   * L2P blocks are arrays of apr_off_t. */
  FUNC2(FUNC8(ffd->block_size, 0x400,
                            CONFIG_OPTION_BLOCK_SIZE, scratch_pool));
  FUNC2(FUNC8(ffd->p2l_page_size, 0x400,
                            CONFIG_OPTION_P2L_PAGE_SIZE, scratch_pool));
  FUNC2(FUNC8(ffd->l2p_page_size, sizeof(apr_off_t),
                            CONFIG_OPTION_L2P_PAGE_SIZE, scratch_pool));

  /* convert kBytes to bytes */
  ffd->block_size *= 0x400;
  ffd->p2l_page_size *= 0x400;
  /* L2P pages are in entries - not in (k)Bytes */

  /* Debug options. */
  FUNC2(FUNC4(config, &ffd->pack_after_commit,
                              CONFIG_SECTION_DEBUG,
                              CONFIG_OPTION_PACK_AFTER_COMMIT,
                              FALSE));

  /* memcached configuration */
  FUNC2(FUNC3(&ffd->memcache, config,
                                               result_pool, scratch_pool));

  FUNC2(FUNC4(config, &ffd->fail_stop,
                              CONFIG_SECTION_CACHES, CONFIG_OPTION_FAIL_STOP,
                              FALSE));

  return SVN_NO_ERROR;
}
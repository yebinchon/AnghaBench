
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_deltification_walk; int max_linear_deltification; int delta_compression_level; int revprop_pack_size; int block_size; int l2p_page_size; int p2l_page_size; int fail_stop; int memcache; int pack_after_commit; int compress_packed_revprops; int rep_sharing_allowed; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_int64_t ;


 int CONFIG_OPTION_BLOCK_SIZE ;
 int CONFIG_OPTION_COMPRESSION_LEVEL ;
 int CONFIG_OPTION_COMPRESS_PACKED_REVPROPS ;
 int CONFIG_OPTION_ENABLE_REP_SHARING ;
 int CONFIG_OPTION_FAIL_STOP ;
 int CONFIG_OPTION_L2P_PAGE_SIZE ;
 int CONFIG_OPTION_MAX_DELTIFICATION_WALK ;
 int CONFIG_OPTION_MAX_LINEAR_DELTIFICATION ;
 int CONFIG_OPTION_P2L_PAGE_SIZE ;
 int CONFIG_OPTION_PACK_AFTER_COMMIT ;
 int CONFIG_OPTION_REVPROP_PACK_SIZE ;
 int CONFIG_SECTION_CACHES ;
 int CONFIG_SECTION_DEBUG ;
 int CONFIG_SECTION_DELTIFICATION ;
 int CONFIG_SECTION_IO ;
 int CONFIG_SECTION_PACKED_REVPROPS ;
 int CONFIG_SECTION_REP_SHARING ;
 int FALSE ;
 int MAX (int ,int) ;
 scalar_t__ MIN (int ,int ) ;
 int PATH_CONFIG ;
 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_DELTA_COMPRESSION_LEVEL_MAX ;
 int SVN_DELTA_COMPRESSION_LEVEL_NONE ;
 int SVN_ERR (int ) ;
 int SVN_FS_X_MAX_DELTIFICATION_WALK ;
 int SVN_FS_X_MAX_LINEAR_DELTIFICATION ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_cache__make_memcache_from_config (int *,int *,int *,int *) ;
 int svn_config_get_bool (int *,int *,int ,int ,int ) ;
 int svn_config_get_int64 (int *,int*,int ,int ,int) ;
 int svn_config_read3 (int **,int ,int ,int ,int ,int *) ;
 int svn_dirent_join (char const*,int ,int *) ;
 int verify_block_size (int,int,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_config(svn_fs_x__data_t *ffd,
            const char *fs_path,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_config_t *config;
  apr_int64_t compression_level;

  SVN_ERR(svn_config_read3(&config,
                           svn_dirent_join(fs_path, PATH_CONFIG, scratch_pool),
                           FALSE, FALSE, FALSE, scratch_pool));


  SVN_ERR(svn_config_get_bool(config, &ffd->rep_sharing_allowed,
                              CONFIG_SECTION_REP_SHARING,
                              CONFIG_OPTION_ENABLE_REP_SHARING, TRUE));


  SVN_ERR(svn_config_get_int64(config, &ffd->max_deltification_walk,
                               CONFIG_SECTION_DELTIFICATION,
                               CONFIG_OPTION_MAX_DELTIFICATION_WALK,
                               SVN_FS_X_MAX_DELTIFICATION_WALK));
  SVN_ERR(svn_config_get_int64(config, &ffd->max_linear_deltification,
                               CONFIG_SECTION_DELTIFICATION,
                               CONFIG_OPTION_MAX_LINEAR_DELTIFICATION,
                               SVN_FS_X_MAX_LINEAR_DELTIFICATION));
  SVN_ERR(svn_config_get_int64(config, &compression_level,
                               CONFIG_SECTION_DELTIFICATION,
                               CONFIG_OPTION_COMPRESSION_LEVEL,
                               SVN_DELTA_COMPRESSION_LEVEL_DEFAULT));
  ffd->delta_compression_level
    = (int)MIN(MAX(SVN_DELTA_COMPRESSION_LEVEL_NONE, compression_level),
                SVN_DELTA_COMPRESSION_LEVEL_MAX);


  SVN_ERR(svn_config_get_bool(config, &ffd->compress_packed_revprops,
                              CONFIG_SECTION_PACKED_REVPROPS,
                              CONFIG_OPTION_COMPRESS_PACKED_REVPROPS,
                              TRUE));
  SVN_ERR(svn_config_get_int64(config, &ffd->revprop_pack_size,
                               CONFIG_SECTION_PACKED_REVPROPS,
                               CONFIG_OPTION_REVPROP_PACK_SIZE,
                               ffd->compress_packed_revprops
                                   ? 0x100
                                   : 0x40));

  ffd->revprop_pack_size *= 1024;


  SVN_ERR(svn_config_get_int64(config, &ffd->block_size,
                               CONFIG_SECTION_IO,
                               CONFIG_OPTION_BLOCK_SIZE,
                               64));
  SVN_ERR(svn_config_get_int64(config, &ffd->l2p_page_size,
                               CONFIG_SECTION_IO,
                               CONFIG_OPTION_L2P_PAGE_SIZE,
                               0x2000));
  SVN_ERR(svn_config_get_int64(config, &ffd->p2l_page_size,
                               CONFIG_SECTION_IO,
                               CONFIG_OPTION_P2L_PAGE_SIZE,
                               0x400));




  SVN_ERR(verify_block_size(ffd->block_size, 0x400,
                            CONFIG_OPTION_BLOCK_SIZE, scratch_pool));
  SVN_ERR(verify_block_size(ffd->p2l_page_size, 0x400,
                            CONFIG_OPTION_P2L_PAGE_SIZE, scratch_pool));
  SVN_ERR(verify_block_size(ffd->l2p_page_size, sizeof(apr_off_t),
                            CONFIG_OPTION_L2P_PAGE_SIZE, scratch_pool));


  ffd->block_size *= 0x400;
  ffd->p2l_page_size *= 0x400;



  SVN_ERR(svn_config_get_bool(config, &ffd->pack_after_commit,
                              CONFIG_SECTION_DEBUG,
                              CONFIG_OPTION_PACK_AFTER_COMMIT,
                              FALSE));


  SVN_ERR(svn_cache__make_memcache_from_config(&ffd->memcache, config,
                                               result_pool, scratch_pool));

  SVN_ERR(svn_config_get_bool(config, &ffd->fail_stop,
                              CONFIG_SECTION_CACHES, CONFIG_OPTION_FAIL_STOP,
                              FALSE));

  return SVN_NO_ERROR;
}

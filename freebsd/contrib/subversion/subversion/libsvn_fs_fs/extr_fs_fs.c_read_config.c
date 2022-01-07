
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_3__ {scalar_t__ format; int max_deltification_walk; int max_linear_deltification; int revprop_pack_size; int block_size; int l2p_page_size; int p2l_page_size; scalar_t__ delta_compression_type; void* fail_stop; int memcache; void* verify_before_commit; void* delta_compression_level; void* pack_after_commit; void* compress_packed_revprops; void* deltify_properties; void* deltify_directories; void* rep_sharing_allowed; } ;
typedef TYPE_1__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int CONFIG_OPTION_BLOCK_SIZE ;
 int CONFIG_OPTION_COMPRESSION ;
 int CONFIG_OPTION_COMPRESSION_LEVEL ;
 int CONFIG_OPTION_COMPRESS_PACKED_REVPROPS ;
 int CONFIG_OPTION_ENABLE_DIR_DELTIFICATION ;
 int CONFIG_OPTION_ENABLE_PROPS_DELTIFICATION ;
 int CONFIG_OPTION_ENABLE_REP_SHARING ;
 int CONFIG_OPTION_FAIL_STOP ;
 int CONFIG_OPTION_L2P_PAGE_SIZE ;
 int CONFIG_OPTION_MAX_DELTIFICATION_WALK ;
 int CONFIG_OPTION_MAX_LINEAR_DELTIFICATION ;
 int CONFIG_OPTION_P2L_PAGE_SIZE ;
 int CONFIG_OPTION_PACK_AFTER_COMMIT ;
 int CONFIG_OPTION_REVPROP_PACK_SIZE ;
 int CONFIG_OPTION_VERIFY_BEFORE_COMMIT ;
 int CONFIG_SECTION_CACHES ;
 int CONFIG_SECTION_DEBUG ;
 int CONFIG_SECTION_DELTIFICATION ;
 int CONFIG_SECTION_IO ;
 int CONFIG_SECTION_PACKED_REVPROPS ;
 int CONFIG_SECTION_REP_SHARING ;
 void* FALSE ;
 int MAX (void*,void*) ;
 void* MIN (int ,int ) ;
 int PATH_CONFIG ;
 void* SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_DELTA_COMPRESSION_LEVEL_MAX ;
 void* SVN_DELTA_COMPRESSION_LEVEL_NONE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_BAD_CONFIG_VALUE ;
 int SVN_FS_FS_MAX_DELTIFICATION_WALK ;
 int SVN_FS_FS_MAX_LINEAR_DELTIFICATION ;
 scalar_t__ SVN_FS_FS__MIN_DELTIFICATION_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_REP_SHARING_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_SVNDIFF1_FORMAT ;
 scalar_t__ SVN_FS_FS__MIN_SVNDIFF2_FORMAT ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int _ (char*) ;
 scalar_t__ compression_type_lz4 ;
 scalar_t__ compression_type_none ;
 void* compression_type_zlib ;
 int parse_compression_option (scalar_t__*,void**,char const*) ;
 int svn_cache__make_memcache_from_config (int *,int *,int *,int *) ;
 int svn_config_get (int *,char const**,int ,int ,int *) ;
 int svn_config_get_bool (int *,void**,int ,int ,void*) ;
 int svn_config_get_int64 (int *,int*,int ,int ,int) ;
 int svn_config_read3 (int **,int ,void*,void*,void*,int *) ;
 int svn_cstring_atoi (void**,char const*) ;
 int svn_dirent_join (char const*,int ,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int verify_block_size (int,int,int ,int *) ;

__attribute__((used)) static svn_error_t *
read_config(fs_fs_data_t *ffd,
            const char *fs_path,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_config_t *config;

  SVN_ERR(svn_config_read3(&config,
                           svn_dirent_join(fs_path, PATH_CONFIG, scratch_pool),
                           FALSE, FALSE, FALSE, scratch_pool));


  if (ffd->format >= SVN_FS_FS__MIN_REP_SHARING_FORMAT)
    SVN_ERR(svn_config_get_bool(config, &ffd->rep_sharing_allowed,
                                CONFIG_SECTION_REP_SHARING,
                                CONFIG_OPTION_ENABLE_REP_SHARING, TRUE));
  else
    ffd->rep_sharing_allowed = FALSE;


  if (ffd->format >= SVN_FS_FS__MIN_DELTIFICATION_FORMAT)
    {
      SVN_ERR(svn_config_get_bool(config, &ffd->deltify_directories,
                                  CONFIG_SECTION_DELTIFICATION,
                                  CONFIG_OPTION_ENABLE_DIR_DELTIFICATION,
                                  TRUE));
      SVN_ERR(svn_config_get_bool(config, &ffd->deltify_properties,
                                  CONFIG_SECTION_DELTIFICATION,
                                  CONFIG_OPTION_ENABLE_PROPS_DELTIFICATION,
                                  TRUE));
      SVN_ERR(svn_config_get_int64(config, &ffd->max_deltification_walk,
                                   CONFIG_SECTION_DELTIFICATION,
                                   CONFIG_OPTION_MAX_DELTIFICATION_WALK,
                                   SVN_FS_FS_MAX_DELTIFICATION_WALK));
      SVN_ERR(svn_config_get_int64(config, &ffd->max_linear_deltification,
                                   CONFIG_SECTION_DELTIFICATION,
                                   CONFIG_OPTION_MAX_LINEAR_DELTIFICATION,
                                   SVN_FS_FS_MAX_LINEAR_DELTIFICATION));
    }
  else
    {
      ffd->deltify_directories = FALSE;
      ffd->deltify_properties = FALSE;
      ffd->max_deltification_walk = SVN_FS_FS_MAX_DELTIFICATION_WALK;
      ffd->max_linear_deltification = SVN_FS_FS_MAX_LINEAR_DELTIFICATION;
    }


  if (ffd->format >= SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT)
    {
      SVN_ERR(svn_config_get_bool(config, &ffd->compress_packed_revprops,
                                  CONFIG_SECTION_PACKED_REVPROPS,
                                  CONFIG_OPTION_COMPRESS_PACKED_REVPROPS,
                                  FALSE));
      SVN_ERR(svn_config_get_int64(config, &ffd->revprop_pack_size,
                                   CONFIG_SECTION_PACKED_REVPROPS,
                                   CONFIG_OPTION_REVPROP_PACK_SIZE,
                                   ffd->compress_packed_revprops
                                       ? 0x40
                                       : 0x10));

      ffd->revprop_pack_size *= 1024;
    }
  else
    {
      ffd->revprop_pack_size = 0x10000;
      ffd->compress_packed_revprops = FALSE;
    }

  if (ffd->format >= SVN_FS_FS__MIN_LOG_ADDRESSING_FORMAT)
    {
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

    }
  else
    {

      ffd->block_size = 0x1000;
      ffd->l2p_page_size = 0x2000;
      ffd->p2l_page_size = 0x100000;
    }

  if (ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT)
    {
      SVN_ERR(svn_config_get_bool(config, &ffd->pack_after_commit,
                                  CONFIG_SECTION_DEBUG,
                                  CONFIG_OPTION_PACK_AFTER_COMMIT,
                                  FALSE));
    }
  else
    {
      ffd->pack_after_commit = FALSE;
    }


  if (ffd->format >= SVN_FS_FS__MIN_DELTIFICATION_FORMAT)
    {
      const char *compression_val;
      const char *compression_level_val;

      svn_config_get(config, &compression_val,
                     CONFIG_SECTION_DELTIFICATION,
                     CONFIG_OPTION_COMPRESSION, ((void*)0));
      svn_config_get(config, &compression_level_val,
                     CONFIG_SECTION_DELTIFICATION,
                     CONFIG_OPTION_COMPRESSION_LEVEL, ((void*)0));
      if (compression_val && compression_level_val)
        {
          return svn_error_create(SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                                  _("The 'compression' and 'compression-level' "
                                    "config options are mutually exclusive"));
        }
      else if (compression_val)
        {
          SVN_ERR(parse_compression_option(&ffd->delta_compression_type,
                                           &ffd->delta_compression_level,
                                           compression_val));
          if (ffd->delta_compression_type == compression_type_lz4 &&
              ffd->format < SVN_FS_FS__MIN_SVNDIFF2_FORMAT)
            {
              return svn_error_create(SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                                      _("Compression type 'lz4' requires "
                                        "filesystem format 8 or higher"));
            }
        }
      else if (compression_level_val)
        {

          ffd->delta_compression_type = compression_type_zlib;
          SVN_ERR(svn_cstring_atoi(&ffd->delta_compression_level,
                                   compression_level_val));
          ffd->delta_compression_level =
            MIN(MAX(SVN_DELTA_COMPRESSION_LEVEL_NONE,
                    ffd->delta_compression_level),
                SVN_DELTA_COMPRESSION_LEVEL_MAX);
        }
      else
        {


          if (ffd->format >= SVN_FS_FS__MIN_SVNDIFF2_FORMAT)
            ffd->delta_compression_type = compression_type_lz4;
          else
            ffd->delta_compression_type = compression_type_zlib;

          ffd->delta_compression_level = SVN_DELTA_COMPRESSION_LEVEL_DEFAULT;
        }
    }
  else if (ffd->format >= SVN_FS_FS__MIN_SVNDIFF1_FORMAT)
    {
      ffd->delta_compression_type = compression_type_zlib;
      ffd->delta_compression_level = SVN_DELTA_COMPRESSION_LEVEL_DEFAULT;
    }
  else
    {
      ffd->delta_compression_type = compression_type_none;
      ffd->delta_compression_level = SVN_DELTA_COMPRESSION_LEVEL_NONE;
    }







  SVN_ERR(svn_config_get_bool(config, &ffd->verify_before_commit,
                              CONFIG_SECTION_DEBUG,
                              CONFIG_OPTION_VERIFY_BEFORE_COMMIT,
                              FALSE));



  SVN_ERR(svn_cache__make_memcache_from_config(&ffd->memcache, config,
                                               result_pool, scratch_pool));

  SVN_ERR(svn_config_get_bool(config, &ffd->fail_stop,
                              CONFIG_SECTION_CACHES, CONFIG_OPTION_FAIL_STOP,
                              FALSE));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_4__ {int cache_size; } ;
typedef TYPE_1__ svn_cache_config_t ;
typedef int apr_uint64_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_MEMORY_CACHE_SIZE ;
 int SVN_CONFIG_SECTION_MISCELLANY ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* svn_cache_config_get () ;
 int svn_cache_config_set (TYPE_1__*) ;
 int svn_config_get (int *,char const**,int ,int ,int *) ;
 int svn_cstring_atoui64 (int*,char const*) ;
 int svn_error_quick_wrap (int ,int ) ;
 int * svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
cache_init(void *baton, apr_pool_t *pool)
{
  apr_hash_t *config_hash = baton;
  svn_config_t *config = ((void*)0);
  const char *memory_cache_size_str;

  if (config_hash)
    config = svn_hash_gets(config_hash, SVN_CONFIG_CATEGORY_CONFIG);
  svn_config_get(config, &memory_cache_size_str, SVN_CONFIG_SECTION_MISCELLANY,
                 SVN_CONFIG_OPTION_MEMORY_CACHE_SIZE, ((void*)0));
  if (memory_cache_size_str)
    {
      apr_uint64_t memory_cache_size;
      svn_cache_config_t settings = *svn_cache_config_get();

      SVN_ERR(svn_error_quick_wrap(svn_cstring_atoui64(&memory_cache_size,
                                                       memory_cache_size_str),
                                   _("memory-cache-size invalid")));
      settings.cache_size = 1024 * 1024 * memory_cache_size;
      svn_cache_config_set(&settings);
    }

  return SVN_NO_ERROR;
}

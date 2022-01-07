
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {char* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef TYPE_2__* svn_mergeinfo_t ;
typedef int svn_mergeinfo_inheritance_t ;
struct TYPE_15__ {TYPE_1__* fs; } ;
typedef TYPE_4__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_16__ {scalar_t__ mergeinfo_cache; scalar_t__ mergeinfo_existence_cache; } ;
typedef TYPE_5__ fs_fs_data_t ;
typedef int apr_pool_t ;
struct TYPE_13__ {TYPE_5__* fsap_data; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_mergeinfo_for_path_internal (TYPE_2__**,TYPE_4__*,char const*,int ,scalar_t__,int *,int *) ;
 char* mergeinfo_cache_key (char const*,TYPE_4__*,int ,scalar_t__,int *) ;
 int svn_cache__get (void**,scalar_t__*,scalar_t__,char const*,int *) ;
 int svn_cache__set (scalar_t__,char const*,TYPE_2__*,int *) ;
 TYPE_2__* svn_stringbuf_create (char*,int *) ;

__attribute__((used)) static svn_error_t *
get_mergeinfo_for_path(svn_mergeinfo_t *mergeinfo,
                       svn_fs_root_t *rev_root,
                       const char *path,
                       svn_mergeinfo_inheritance_t inherit,
                       svn_boolean_t adjust_inherited_mergeinfo,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = rev_root->fs->fsap_data;
  const char *cache_key;
  svn_boolean_t found = FALSE;
  svn_stringbuf_t *mergeinfo_exists;

  *mergeinfo = ((void*)0);

  cache_key = mergeinfo_cache_key(path, rev_root, inherit,
                                  adjust_inherited_mergeinfo, scratch_pool);
  if (ffd->mergeinfo_existence_cache)
    {
      SVN_ERR(svn_cache__get((void **)&mergeinfo_exists, &found,
                             ffd->mergeinfo_existence_cache,
                             cache_key, result_pool));
      if (found && mergeinfo_exists->data[0] == '1')
        SVN_ERR(svn_cache__get((void **)mergeinfo, &found,
                              ffd->mergeinfo_cache,
                              cache_key, result_pool));
    }

  if (! found)
    {
      SVN_ERR(get_mergeinfo_for_path_internal(mergeinfo, rev_root, path,
                                              inherit,
                                              adjust_inherited_mergeinfo,
                                              result_pool, scratch_pool));
      if (ffd->mergeinfo_existence_cache)
        {
          mergeinfo_exists = svn_stringbuf_create(*mergeinfo ? "1" : "0",
                                                  scratch_pool);
          SVN_ERR(svn_cache__set(ffd->mergeinfo_existence_cache,
                                 cache_key, mergeinfo_exists, scratch_pool));
          if (*mergeinfo)
            SVN_ERR(svn_cache__set(ffd->mergeinfo_cache,
                                  cache_key, *mergeinfo, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}

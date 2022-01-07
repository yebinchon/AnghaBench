
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_7__ {TYPE_3__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_8__ {int second; int revision; } ;
typedef TYPE_2__ pair_cache_key_t ;
struct TYPE_9__ {int revprop_cache; int revprop_prefix; } ;
typedef TYPE_3__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cache__has_key (scalar_t__*,int ,TYPE_2__*,int *) ;
 int svn_cache__set (int ,TYPE_2__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
cache_revprops(svn_boolean_t *is_cached,
               svn_fs_t *fs,
               svn_revnum_t revision,
               svn_string_t *content,
               apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  pair_cache_key_t key;


  SVN_ERR_ASSERT(ffd->revprop_prefix);
  key.revision = revision;
  key.second = ffd->revprop_prefix;

  if (is_cached)
    {
      SVN_ERR(svn_cache__has_key(is_cached, ffd->revprop_cache, &key,
                                 scratch_pool));
      if (*is_cached)
        return SVN_NO_ERROR;
    }

  SVN_ERR(svn_cache__set(ffd->revprop_cache, &key, content, scratch_pool));

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
struct TYPE_8__ {int second; int revision; int member_0; } ;
typedef TYPE_1__ svn_fs_x__pair_cache_key_t ;
struct TYPE_9__ {int revprop_cache; int revprop_generation; } ;
typedef TYPE_2__ svn_fs_x__data_t ;
struct TYPE_10__ {TYPE_2__* fsap_data; } ;
typedef TYPE_3__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int apr_psprintf (int *,char*,int ) ;
 scalar_t__ has_revprop_cache (TYPE_3__*,int *) ;
 int is_generation_valid (TYPE_3__*) ;
 int svn_cache__set (int ,TYPE_1__*,int *,int *) ;
 int svn_fs_x__parse_properties (int **,int const*,int *) ;

__attribute__((used)) static svn_error_t *
parse_revprop(apr_hash_t **properties,
              svn_fs_t *fs,
              svn_revnum_t revision,
              const svn_string_t *content,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  SVN_ERR_W(svn_fs_x__parse_properties(properties, content, result_pool),
            apr_psprintf(scratch_pool, "Failed to parse revprops for r%ld.",
                         revision));

  if (has_revprop_cache(fs, scratch_pool))
    {
      svn_fs_x__data_t *ffd = fs->fsap_data;
      svn_fs_x__pair_cache_key_t key = { 0 };

      SVN_ERR_ASSERT(is_generation_valid(fs));

      key.revision = revision;
      key.second = ffd->revprop_generation;
      SVN_ERR(svn_cache__set(ffd->revprop_cache, &key, *properties,
                             scratch_pool));
    }

  return SVN_NO_ERROR;
}

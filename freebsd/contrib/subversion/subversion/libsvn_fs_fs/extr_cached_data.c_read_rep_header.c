
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__rep_header_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int pair_cache_key_t ;
struct TYPE_5__ {scalar_t__ rep_header_cache; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cache__get (void**,scalar_t__*,scalar_t__,int *,int *) ;
 int svn_cache__set (scalar_t__,int *,int *,int *) ;
 int svn_fs_fs__read_rep_header (int **,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_rep_header(svn_fs_fs__rep_header_t **rep_header,
                svn_fs_t *fs,
                svn_stream_t *stream,
                pair_cache_key_t *key,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_boolean_t is_cached = FALSE;

  if (ffd->rep_header_cache)
    {
      SVN_ERR(svn_cache__get((void**)rep_header, &is_cached,
                             ffd->rep_header_cache, key,
                             result_pool));
      if (is_cached)
        return SVN_NO_ERROR;
    }

  SVN_ERR(svn_fs_fs__read_rep_header(rep_header, stream, result_pool,
                                     scratch_pool));

  if (ffd->rep_header_cache)
    SVN_ERR(svn_cache__set(ffd->rep_header_cache, key, *rep_header,
                           scratch_pool));

  return SVN_NO_ERROR;
}

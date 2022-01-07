
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_x__revision_file_t ;
typedef int svn_fs_x__representation_cache_key_t ;
typedef int svn_fs_x__rep_header_t ;
struct TYPE_4__ {int rep_header_cache; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_5__ {TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_cache__get (void**,scalar_t__*,int ,int *,int *) ;
 int svn_cache__set (int ,int *,int *,int *) ;
 int svn_fs_x__read_rep_header (int **,int *,int *,int *) ;
 int svn_fs_x__rev_file_stream (int **,int *) ;

__attribute__((used)) static svn_error_t *
read_rep_header(svn_fs_x__rep_header_t **rep_header,
                svn_fs_t *fs,
                svn_fs_x__revision_file_t *file,
                svn_fs_x__representation_cache_key_t *key,
                apr_pool_t *pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_stream_t *stream;
  svn_boolean_t is_cached = FALSE;

  SVN_ERR(svn_cache__get((void**)rep_header, &is_cached,
                         ffd->rep_header_cache, key, pool));
  if (is_cached)
    return SVN_NO_ERROR;

  SVN_ERR(svn_fs_x__rev_file_stream(&stream, file));
  SVN_ERR(svn_fs_x__read_rep_header(rep_header, stream, pool, pool));
  SVN_ERR(svn_cache__set(ffd->rep_header_cache, key, *rep_header, pool));

  return SVN_NO_ERROR;
}

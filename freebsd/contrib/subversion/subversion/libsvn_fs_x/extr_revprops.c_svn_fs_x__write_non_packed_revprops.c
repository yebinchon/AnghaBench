
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * svn_checksum__wrap_write_stream (TYPE_1__**,int *,int ,int *) ;
 int svn_checksum_fnv1a_32x4 ;
 int svn_checksum_size (TYPE_1__*) ;
 int svn_fs_x__write_properties (int *,int *,int *) ;
 int svn_io_file_write_full (int *,int ,int ,int *,int *) ;
 int svn_stream_close (int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_fs_x__write_non_packed_revprops(apr_file_t *file,
                                    apr_hash_t *proplist,
                                    apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  svn_checksum_t *checksum;

  stream = svn_stream_from_aprfile2(file, TRUE, scratch_pool);
  stream = svn_checksum__wrap_write_stream(&checksum, stream,
                                           svn_checksum_fnv1a_32x4,
                                           scratch_pool);
  SVN_ERR(svn_fs_x__write_properties(stream, proplist, scratch_pool));
  SVN_ERR(svn_stream_close(stream));


  SVN_ERR(svn_io_file_write_full(file, checksum->digest,
                                 svn_checksum_size(checksum), ((void*)0),
                                 scratch_pool));

  return SVN_NO_ERROR;
}

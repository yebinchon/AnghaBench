
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int STREAM_THRESHOLD ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int expected_checksum (int *,TYPE_1__*,int ,int *) ;
 int svn__fnv1a_32x4 (unsigned char*,int ) ;
 int svn_fs_x__rev_file_read (int *,unsigned char*,int ) ;

__attribute__((used)) static svn_error_t *
expected_buffered_checksum(svn_fs_x__revision_file_t *file,
                           svn_fs_x__p2l_entry_t *entry,
                           apr_pool_t *scratch_pool)
{
  unsigned char buffer[STREAM_THRESHOLD];
  SVN_ERR_ASSERT(entry->size <= STREAM_THRESHOLD);

  SVN_ERR(svn_fs_x__rev_file_read(file, buffer, (apr_size_t)entry->size));
  SVN_ERR(expected_checksum(file, entry,
                            svn__fnv1a_32x4(buffer, (apr_size_t)entry->size),
                            scratch_pool));

  return SVN_NO_ERROR;
}

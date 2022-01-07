
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
typedef TYPE_1__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int STREAM_THRESHOLD ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int expected_checksum (int *,TYPE_1__*,int ,int *) ;
 int svn__fnv1a_32x4 (unsigned char*,int ) ;
 int svn_io_file_read_full2 (int *,unsigned char*,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
expected_buffered_checksum(apr_file_t *file,
                           svn_fs_fs__p2l_entry_t *entry,
                           apr_pool_t *pool)
{
  unsigned char buffer[STREAM_THRESHOLD];
  SVN_ERR_ASSERT(entry->size <= STREAM_THRESHOLD);

  SVN_ERR(svn_io_file_read_full2(file, buffer, (apr_size_t)entry->size,
                                 ((void*)0), ((void*)0), pool));
  SVN_ERR(expected_checksum(file, entry,
                            svn__fnv1a_32x4(buffer, (apr_size_t)entry->size),
                            pool));

  return SVN_NO_ERROR;
}

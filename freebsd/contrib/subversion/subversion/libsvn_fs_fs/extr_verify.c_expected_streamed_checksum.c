
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; } ;
typedef TYPE_1__ svn_fs_fs__p2l_entry_t ;
typedef int svn_error_t ;
struct TYPE_7__ {scalar_t__ digest; } ;
typedef TYPE_2__ svn_checksum_t ;
typedef int svn_checksum_ctx_t ;
typedef int buffer ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int STREAM_THRESHOLD ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int expected_checksum (int *,TYPE_1__*,int ,int *) ;
 int ntohl (int const) ;
 int * svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_final (TYPE_2__**,int *,int *) ;
 int svn_checksum_fnv1a_32x4 ;
 int svn_checksum_update (int *,unsigned char*,int) ;
 int svn_io_file_read_full2 (int *,unsigned char*,int,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
expected_streamed_checksum(apr_file_t *file,
                           svn_fs_fs__p2l_entry_t *entry,
                           apr_pool_t *pool)
{
  unsigned char buffer[STREAM_THRESHOLD];
  svn_checksum_t *checksum;
  svn_checksum_ctx_t *context
    = svn_checksum_ctx_create(svn_checksum_fnv1a_32x4, pool);
  apr_off_t size = entry->size;

  while (size > 0)
    {
      apr_size_t to_read = size > sizeof(buffer)
                         ? sizeof(buffer)
                         : (apr_size_t)size;
      SVN_ERR(svn_io_file_read_full2(file, buffer, to_read, ((void*)0), ((void*)0),
                                     pool));
      SVN_ERR(svn_checksum_update(context, buffer, to_read));
      size -= to_read;
    }

  SVN_ERR(svn_checksum_final(&checksum, context, pool));
  SVN_ERR(expected_checksum(file, entry,
                            ntohl(*(const apr_uint32_t *)checksum->digest),
                            pool));

  return SVN_NO_ERROR;
}

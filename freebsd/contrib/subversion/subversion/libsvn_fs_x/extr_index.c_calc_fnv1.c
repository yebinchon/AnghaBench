
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_5__ {int size; scalar_t__ type; int fnv1_checksum; int offset; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef int svn_error_t ;
struct TYPE_6__ {scalar_t__ digest; } ;
typedef TYPE_2__ svn_checksum_t ;
typedef int svn_checksum_ctx_t ;
typedef int buffer ;
typedef int apr_uint32_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_X__ITEM_TYPE_UNUSED ;
 int * SVN_NO_ERROR ;
 int ntohl (int const) ;
 int * svn_checksum_ctx_create (int ,int *) ;
 int svn_checksum_final (TYPE_2__**,int *,int *) ;
 int svn_checksum_fnv1a_32x4 ;
 int svn_checksum_update (int *,unsigned char*,int) ;
 int svn_fs_x__rev_file_read (int *,unsigned char*,int) ;
 int svn_fs_x__rev_file_seek (int *,int *,int ) ;

__attribute__((used)) static svn_error_t *
calc_fnv1(svn_fs_x__p2l_entry_t *entry,
          svn_fs_x__revision_file_t *rev_file,
          apr_pool_t *scratch_pool)
{
  unsigned char buffer[4096];
  svn_checksum_t *checksum;
  svn_checksum_ctx_t *context
    = svn_checksum_ctx_create(svn_checksum_fnv1a_32x4, scratch_pool);
  apr_off_t size = entry->size;




  if (entry->type == SVN_FS_X__ITEM_TYPE_UNUSED)
    {
      entry->fnv1_checksum = 0;
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_fs_x__rev_file_seek(rev_file, ((void*)0), entry->offset));
  while (size > 0)
    {
      apr_size_t to_read = size > sizeof(buffer)
                         ? sizeof(buffer)
                         : (apr_size_t)size;
      SVN_ERR(svn_fs_x__rev_file_read(rev_file, buffer, to_read));
      SVN_ERR(svn_checksum_update(context, buffer, to_read));
      size -= to_read;
    }


  SVN_ERR(svn_checksum_final(&checksum, context, scratch_pool));
  entry->fnv1_checksum = ntohl(*(const apr_uint32_t *)checksum->digest);

  return SVN_NO_ERROR;
}

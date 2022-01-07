
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_x__revision_file_t ;
struct TYPE_3__ {scalar_t__ fnv1_checksum; int size; int offset; } ;
typedef TYPE_1__ svn_fs_x__p2l_entry_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_off_t_toa (int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,int ,char const*) ;
 int svn_fs_x__rev_file_name (char const**,int *,int *) ;

__attribute__((used)) static svn_error_t *
expected_checksum(svn_fs_x__revision_file_t *file,
                  svn_fs_x__p2l_entry_t *entry,
                  apr_uint32_t actual,
                  apr_pool_t *scratch_pool)
{
  if (actual != entry->fnv1_checksum)
    {
      const char *file_name;

      SVN_ERR(svn_fs_x__rev_file_name(&file_name, file, scratch_pool));
      return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                               _("Checksum mismatch in item at offset %s of "
                                 "length %s bytes in file %s"),
                               apr_off_t_toa(scratch_pool, entry->offset),
                               apr_off_t_toa(scratch_pool, entry->size),
                               file_name);
    }

  return SVN_NO_ERROR;
}

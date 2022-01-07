
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {int start_revision; int is_packed; } ;
struct TYPE_6__ {TYPE_1__ file_info; } ;
typedef TYPE_2__ svn_fs_x__revision_file_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 TYPE_2__* create_revision_file (int *,int *) ;
 int svn_fs_x__is_packed_rev (int *,int ) ;
 int svn_fs_x__packed_base_rev (int *,int ) ;

__attribute__((used)) static svn_fs_x__revision_file_t *
init_revision_file(svn_fs_t *fs,
                   svn_revnum_t revision,
                   apr_pool_t *result_pool)
{
  svn_fs_x__revision_file_t *file = create_revision_file(fs, result_pool);

  file->file_info.is_packed = svn_fs_x__is_packed_rev(fs, revision);
  file->file_info.start_revision = svn_fs_x__packed_base_rev(fs, revision);

  return file;
}

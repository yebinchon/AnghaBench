
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_11__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_12__ {scalar_t__ kind; } ;
typedef TYPE_3__ svn_checksum_t ;
typedef scalar_t__ svn_checksum_kind_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {int (* file_checksum ) (TYPE_3__**,scalar_t__,TYPE_2__*,char const*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_3__**,scalar_t__,TYPE_2__*,char const*,int *) ;
 int svn_fs_file_contents (int **,TYPE_2__*,char const*,int *) ;
 int svn_stream_contents_checksum (TYPE_3__**,int *,scalar_t__,int *,int *) ;

svn_error_t *
svn_fs_file_checksum(svn_checksum_t **checksum,
                     svn_checksum_kind_t kind,
                     svn_fs_root_t *root,
                     const char *path,
                     svn_boolean_t force,
                     apr_pool_t *pool)
{
  SVN_ERR(root->vtable->file_checksum(checksum, kind, root, path, pool));

  if (force && (*checksum == ((void*)0) || (*checksum)->kind != kind))
    {
      svn_stream_t *contents;

      SVN_ERR(svn_fs_file_contents(&contents, root, path, pool));
      SVN_ERR(svn_stream_contents_checksum(checksum, contents, kind,
                                           pool, pool));
    }

  return SVN_NO_ERROR;
}

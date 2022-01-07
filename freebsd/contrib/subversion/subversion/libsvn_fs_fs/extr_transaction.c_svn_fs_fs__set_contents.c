
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NOT_FILE ;
 int _ (char*) ;
 int * set_representation (int **,int *,TYPE_1__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_fs__set_contents(svn_stream_t **stream,
                        svn_fs_t *fs,
                        node_revision_t *noderev,
                        apr_pool_t *pool)
{
  if (noderev->kind != svn_node_file)
    return svn_error_create(SVN_ERR_FS_NOT_FILE, ((void*)0),
                            _("Can't set text contents of a directory"));

  return set_representation(stream, fs, noderev, pool);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct rep_write_baton {int dummy; } ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int data; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int rep_write_contents ;
 int rep_write_contents_close ;
 int rep_write_get_baton (struct rep_write_baton**,int *,TYPE_1__*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_fs__id_is_txn (int ) ;
 TYPE_2__* svn_fs_fs__id_unparse (int ,int *) ;
 int * svn_stream_create (struct rep_write_baton*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;

__attribute__((used)) static svn_error_t *
set_representation(svn_stream_t **contents_p,
                   svn_fs_t *fs,
                   node_revision_t *noderev,
                   apr_pool_t *pool)
{
  struct rep_write_baton *wb;

  if (! svn_fs_fs__id_is_txn(noderev->id))
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Attempted to write to non-transaction '%s'"),
                             svn_fs_fs__id_unparse(noderev->id, pool)->data);

  SVN_ERR(rep_write_get_baton(&wb, fs, noderev, pool));

  *contents_p = svn_stream_create(wb, pool);
  svn_stream_set_write(*contents_p, rep_write_contents);
  svn_stream_set_close(*contents_p, rep_write_contents_close);

  return SVN_NO_ERROR;
}

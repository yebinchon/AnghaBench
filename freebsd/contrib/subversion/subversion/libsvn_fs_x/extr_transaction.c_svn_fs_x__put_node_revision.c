
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int change_set; } ;
struct TYPE_8__ {TYPE_2__ noderev_id; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef TYPE_2__ svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;
struct TYPE_10__ {int data; } ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 TYPE_6__* svn_fs_x__id_unparse (TYPE_2__ const*,int *) ;
 int svn_fs_x__is_txn (int ) ;
 int svn_fs_x__path_txn_node_rev (int *,TYPE_2__ const*,int *,int *) ;
 int svn_fs_x__write_noderev (int ,TYPE_1__*,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,int ,int,int ,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_fs_x__put_node_revision(svn_fs_t *fs,
                            svn_fs_x__noderev_t *noderev,
                            apr_pool_t *scratch_pool)
{
  apr_file_t *noderev_file;
  const svn_fs_x__id_t *id = &noderev->noderev_id;

  if (! svn_fs_x__is_txn(id->change_set))
    return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                             _("Attempted to write to non-transaction '%s'"),
                             svn_fs_x__id_unparse(id, scratch_pool)->data);

  SVN_ERR(svn_io_file_open(&noderev_file,
                           svn_fs_x__path_txn_node_rev(fs, id, scratch_pool,
                                                       scratch_pool),
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, scratch_pool));

  SVN_ERR(svn_fs_x__write_noderev(svn_stream_from_aprfile2(noderev_file, TRUE,
                                                           scratch_pool),
                                  noderev, scratch_pool));

  SVN_ERR(svn_io_file_close(noderev_file, scratch_pool));

  return SVN_NO_ERROR;
}

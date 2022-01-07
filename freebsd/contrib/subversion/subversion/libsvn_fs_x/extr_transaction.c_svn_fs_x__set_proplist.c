
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_10__ {int change_set; } ;
struct TYPE_9__ {TYPE_7__* prop_rep; TYPE_3__ noderev_id; } ;
typedef TYPE_2__ svn_fs_x__noderev_t ;
typedef TYPE_3__ svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
struct TYPE_8__ {int number; int change_set; } ;
struct TYPE_11__ {TYPE_1__ id; } ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int allocate_item_index (int *,int *,int ,int *) ;
 TYPE_7__* apr_pcalloc (int *,int) ;
 int svn_fs_x__get_txn_id (int ) ;
 scalar_t__ svn_fs_x__is_revision (int ) ;
 char* svn_fs_x__path_txn_node_props (int *,TYPE_3__ const*,int *,int *) ;
 int svn_fs_x__put_node_revision (int *,TYPE_2__*,int *) ;
 int svn_fs_x__write_properties (int *,int *,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_fs_x__set_proplist(svn_fs_t *fs,
                       svn_fs_x__noderev_t *noderev,
                       apr_hash_t *proplist,
                       apr_pool_t *scratch_pool)
{
  const svn_fs_x__id_t *id = &noderev->noderev_id;
  const char *filename = svn_fs_x__path_txn_node_props(fs, id, scratch_pool,
                                                       scratch_pool);
  apr_file_t *file;
  svn_stream_t *out;


  SVN_ERR(svn_io_file_open(&file, filename,
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, scratch_pool));
  out = svn_stream_from_aprfile2(file, TRUE, scratch_pool);
  SVN_ERR(svn_fs_x__write_properties(out, proplist, scratch_pool));
  SVN_ERR(svn_io_file_close(file, scratch_pool));


  if (!noderev->prop_rep
      || svn_fs_x__is_revision(noderev->prop_rep->id.change_set))
    {
      svn_fs_x__txn_id_t txn_id
        = svn_fs_x__get_txn_id(noderev->noderev_id.change_set);
      noderev->prop_rep = apr_pcalloc(scratch_pool,
                                      sizeof(*noderev->prop_rep));
      noderev->prop_rep->id.change_set = id->change_set;
      SVN_ERR(allocate_item_index(&noderev->prop_rep->id.number, fs,
                                  txn_id, scratch_pool));
      SVN_ERR(svn_fs_x__put_node_revision(fs, noderev, scratch_pool));
    }

  return SVN_NO_ERROR;
}

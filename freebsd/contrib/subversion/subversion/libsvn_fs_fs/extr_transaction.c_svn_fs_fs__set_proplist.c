
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int id; TYPE_4__* prop_rep; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;
struct TYPE_8__ {int revision; int txn_id; } ;


 int APR_BUFFERED ;
 int APR_CREATE ;
 int APR_OS_DEFAULT ;
 int APR_TRUNCATE ;
 int APR_WRITE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_HASH_TERMINATOR ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_4__* apr_pcalloc (int *,int) ;
 int is_txn_rep (TYPE_4__*) ;
 int set_uniquifier (int *,TYPE_4__*,int *) ;
 int * svn_fs_fs__id_txn_id (int ) ;
 char* svn_fs_fs__path_txn_node_props (int *,int ,int *) ;
 int svn_fs_fs__put_node_revision (int *,int ,TYPE_1__*,int ,int *) ;
 int svn_hash_write2 (int *,int *,int ,int *) ;
 int svn_io_file_close (int *,int *) ;
 int svn_io_file_open (int **,char const*,int,int ,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_fs_fs__set_proplist(svn_fs_t *fs,
                        node_revision_t *noderev,
                        apr_hash_t *proplist,
                        apr_pool_t *pool)
{
  const char *filename
    = svn_fs_fs__path_txn_node_props(fs, noderev->id, pool);
  apr_file_t *file;
  svn_stream_t *out;


  SVN_ERR(svn_io_file_open(&file, filename,
                           APR_WRITE | APR_CREATE | APR_TRUNCATE
                           | APR_BUFFERED, APR_OS_DEFAULT, pool));
  out = svn_stream_from_aprfile2(file, TRUE, pool);
  SVN_ERR(svn_hash_write2(proplist, out, SVN_HASH_TERMINATOR, pool));
  SVN_ERR(svn_io_file_close(file, pool));


  if (!noderev->prop_rep || !is_txn_rep(noderev->prop_rep))
    {
      noderev->prop_rep = apr_pcalloc(pool, sizeof(*noderev->prop_rep));
      noderev->prop_rep->txn_id = *svn_fs_fs__id_txn_id(noderev->id);
      SVN_ERR(set_uniquifier(fs, noderev->prop_rep, pool));
      noderev->prop_rep->revision = SVN_INVALID_REVNUM;
      SVN_ERR(svn_fs_fs__put_node_revision(fs, noderev->id, noderev, FALSE,
                                           pool));
    }

  return SVN_NO_ERROR;
}

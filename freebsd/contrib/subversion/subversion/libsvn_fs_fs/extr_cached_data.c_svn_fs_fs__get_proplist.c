
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_16__ {TYPE_6__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int revision; int item_index; int txn_id; } ;
typedef TYPE_3__ representation_t ;
struct TYPE_18__ {int second; int revision; int member_0; } ;
typedef TYPE_4__ pair_cache_key_t ;
struct TYPE_19__ {int id; TYPE_3__* prop_rep; } ;
typedef TYPE_5__ node_revision_t ;
struct TYPE_20__ {scalar_t__ properties_cache; } ;
typedef TYPE_6__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_HASH_TERMINATOR ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int svn_cache__get (void**,scalar_t__*,scalar_t__,TYPE_4__*,int *) ;
 int svn_cache__set (scalar_t__,TYPE_4__*,int *,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_quick_wrapf (int *,int ,int ,...) ;
 int svn_fs_fs__get_contents (int **,TYPE_2__*,TYPE_3__*,int ,int *) ;
 scalar_t__ svn_fs_fs__id_txn_used (int *) ;
 TYPE_1__* svn_fs_fs__id_unparse (int ,int *) ;
 char* svn_fs_fs__path_txn_node_props (TYPE_2__*,int ,int *) ;
 int * svn_hash_read2 (int *,int *,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_open_readonly (int **,char const*,int *,int *) ;

svn_error_t *
svn_fs_fs__get_proplist(apr_hash_t **proplist_p,
                        svn_fs_t *fs,
                        node_revision_t *noderev,
                        apr_pool_t *pool)
{
  apr_hash_t *proplist;
  svn_stream_t *stream;

  if (noderev->prop_rep && svn_fs_fs__id_txn_used(&noderev->prop_rep->txn_id))
    {
      svn_error_t *err;
      const char *filename
        = svn_fs_fs__path_txn_node_props(fs, noderev->id, pool);
      proplist = apr_hash_make(pool);

      SVN_ERR(svn_stream_open_readonly(&stream, filename, pool, pool));
      err = svn_hash_read2(proplist, stream, SVN_HASH_TERMINATOR, pool);
      if (err)
        {
          svn_string_t *id_str = svn_fs_fs__id_unparse(noderev->id, pool);

          err = svn_error_compose_create(err, svn_stream_close(stream));
          return svn_error_quick_wrapf(err,
                   _("malformed property list for node-revision '%s' in '%s'"),
                   id_str->data, filename);
        }
      SVN_ERR(svn_stream_close(stream));
    }
  else if (noderev->prop_rep)
    {
      svn_error_t *err;
      fs_fs_data_t *ffd = fs->fsap_data;
      representation_t *rep = noderev->prop_rep;
      pair_cache_key_t key = { 0 };

      key.revision = rep->revision;
      key.second = rep->item_index;
      if (ffd->properties_cache && SVN_IS_VALID_REVNUM(rep->revision))
        {
          svn_boolean_t is_cached;
          SVN_ERR(svn_cache__get((void **) proplist_p, &is_cached,
                                 ffd->properties_cache, &key, pool));
          if (is_cached)
            return SVN_NO_ERROR;
        }

      proplist = apr_hash_make(pool);
      SVN_ERR(svn_fs_fs__get_contents(&stream, fs, noderev->prop_rep, FALSE,
                                      pool));
      err = svn_hash_read2(proplist, stream, SVN_HASH_TERMINATOR, pool);
      if (err)
        {
          svn_string_t *id_str = svn_fs_fs__id_unparse(noderev->id, pool);

          err = svn_error_compose_create(err, svn_stream_close(stream));
          return svn_error_quick_wrapf(err,
                   _("malformed property list for node-revision '%s'"),
                   id_str->data);
        }
      SVN_ERR(svn_stream_close(stream));

      if (ffd->properties_cache && SVN_IS_VALID_REVNUM(rep->revision))
        SVN_ERR(svn_cache__set(ffd->properties_cache, &key, proplist, pool));
    }
  else
    {

      proplist = apr_hash_make(pool);
    }

  *proplist_p = proplist;

  return SVN_NO_ERROR;
}

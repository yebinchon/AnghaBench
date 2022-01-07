
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_stringbuf_t ;
typedef int svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_15__ {int number; int change_set; } ;
struct TYPE_16__ {int expanded_size; TYPE_1__ id; } ;
typedef TYPE_2__ svn_fs_x__representation_t ;
struct TYPE_17__ {int second; int revision; int member_0; } ;
typedef TYPE_3__ svn_fs_x__pair_cache_key_t ;
struct TYPE_18__ {int noderev_id; TYPE_2__* prop_rep; } ;
typedef TYPE_4__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_19__ {int properties_cache; } ;
typedef TYPE_5__ svn_fs_x__data_t ;
struct TYPE_20__ {TYPE_5__* fsap_data; } ;
typedef TYPE_6__ svn_fs_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_21__ {int data; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 int apr_psprintf (int *,char*,int ,...) ;
 int svn_cache__get (void**,scalar_t__*,int ,TYPE_3__*,int *) ;
 int svn_cache__set (int ,TYPE_3__*,int *,int *) ;
 int svn_fs_x__get_contents (int **,TYPE_6__*,TYPE_2__*,int ,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 TYPE_8__* svn_fs_x__id_unparse (int *,int *) ;
 int svn_fs_x__is_revision (int ) ;
 int svn_fs_x__parse_properties (int **,int *,int *) ;
 char* svn_fs_x__path_txn_node_props (TYPE_6__*,int const*,int *,int *) ;
 int svn_string_from_stream2 (int **,int *,int ,int *) ;
 int * svn_stringbuf__morph_into_string (int *) ;
 int svn_stringbuf_from_file2 (int **,char const*,int *) ;

svn_error_t *
svn_fs_x__get_proplist(apr_hash_t **proplist,
                       svn_fs_t *fs,
                       svn_fs_x__noderev_t *noderev,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_stream_t *stream;
  const svn_fs_x__id_t *noderev_id = &noderev->noderev_id;

  if (noderev->prop_rep
      && !svn_fs_x__is_revision(noderev->prop_rep->id.change_set))
    {
      svn_stringbuf_t *content;
      svn_string_t *as_string;
      const char *filename = svn_fs_x__path_txn_node_props(fs, noderev_id,
                                                           scratch_pool,
                                                           scratch_pool);
      SVN_ERR(svn_stringbuf_from_file2(&content, filename, result_pool));

      as_string = svn_stringbuf__morph_into_string(content);
      SVN_ERR_W(svn_fs_x__parse_properties(proplist, as_string, result_pool),
                apr_psprintf(scratch_pool,
                    "malformed property list for node-revision '%s' in '%s'",
                    svn_fs_x__id_unparse(&noderev->noderev_id,
                                         scratch_pool)->data,
                    filename));
    }
  else if (noderev->prop_rep)
    {
      svn_fs_x__data_t *ffd = fs->fsap_data;
      svn_fs_x__representation_t *rep = noderev->prop_rep;
      svn_fs_x__pair_cache_key_t key = { 0 };
      svn_string_t *content;
      svn_boolean_t is_cached;

      key.revision = svn_fs_x__get_revnum(rep->id.change_set);
      key.second = rep->id.number;
      SVN_ERR(svn_cache__get((void **) proplist, &is_cached,
                             ffd->properties_cache, &key, result_pool));
      if (is_cached)
        return SVN_NO_ERROR;

      SVN_ERR(svn_fs_x__get_contents(&stream, fs, rep, FALSE, scratch_pool));
      SVN_ERR(svn_string_from_stream2(&content, stream, rep->expanded_size,
                                      result_pool));

      SVN_ERR_W(svn_fs_x__parse_properties(proplist, content, result_pool),
                apr_psprintf(scratch_pool,
                    "malformed property list for node-revision '%s'",
                    svn_fs_x__id_unparse(&noderev->noderev_id,
                                         scratch_pool)->data));

      SVN_ERR(svn_cache__set(ffd->properties_cache, &key, *proplist,
                             scratch_pool));
    }
  else
    {

      *proplist = apr_hash_make(result_pool);
    }

  return SVN_NO_ERROR;
}

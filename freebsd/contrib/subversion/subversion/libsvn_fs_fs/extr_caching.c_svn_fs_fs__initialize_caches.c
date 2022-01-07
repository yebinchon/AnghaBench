
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int window_cache_key_t ;
typedef int svn_revnum_t ;
typedef int svn_membuffer_t ;
struct TYPE_6__ {int pool; int path; int uuid; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_fs__page_cache_key_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int pair_cache_key_t ;
struct TYPE_7__ {int fail_stop; int * p2l_page_cache; int * p2l_header_cache; int * l2p_page_cache; int * l2p_header_cache; int * combined_window_cache; int * txdelta_window_cache; int * raw_window_cache; int * properties_cache; int * mergeinfo_existence_cache; int * mergeinfo_cache; int * fulltext_cache; int * memcache; int * revprop_cache; int * changes_cache; int * rep_header_cache; int * node_revision_cache; int * packed_offset_cache; int * dir_cache; int dag_node_cache; int * rev_node_cache; int * rev_root_id_cache; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int APR_HASH_KEY_STRING ;
 int SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY ;
 int SVN_CACHE__MEMBUFFER_HIGH_PRIORITY ;
 int SVN_CACHE__MEMBUFFER_LOW_PRIORITY ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* SVN_VA_NULL ;
 int TRUE ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int ,int ,int ,int ) ;
 char* apr_pstrcat (int *,char const*,char const*,char*,...) ;
 int create_cache (int **,int *,int *,int,int,int *,int *,int,char*,int ,int,TYPE_1__*,int,int ,int *) ;
 int dump_global_cache_statistics ;
 int normalize_key_part (int ,int *) ;
 int read_config (char const**,int*,int*,int*,TYPE_1__*,int *) ;
 scalar_t__ strlen (char const*) ;
 int * svn_cache__get_global_membuffer_cache () ;
 int svn_fs_fs__create_dag_cache (int ) ;
 int * svn_fs_fs__dag_deserialize ;
 int * svn_fs_fs__dag_serialize ;
 int * svn_fs_fs__deserialize_changes ;
 int * svn_fs_fs__deserialize_dir_entries ;
 int * svn_fs_fs__deserialize_id ;
 int * svn_fs_fs__deserialize_l2p_header ;
 int * svn_fs_fs__deserialize_l2p_page ;
 int * svn_fs_fs__deserialize_manifest ;
 int * svn_fs_fs__deserialize_mergeinfo ;
 int * svn_fs_fs__deserialize_node_revision ;
 int * svn_fs_fs__deserialize_p2l_header ;
 int * svn_fs_fs__deserialize_p2l_page ;
 int * svn_fs_fs__deserialize_properties ;
 int * svn_fs_fs__deserialize_raw_window ;
 int * svn_fs_fs__deserialize_rep_header ;
 int * svn_fs_fs__deserialize_revprops ;
 int * svn_fs_fs__deserialize_txdelta_window ;
 int * svn_fs_fs__serialize_changes ;
 int * svn_fs_fs__serialize_dir_entries ;
 int * svn_fs_fs__serialize_id ;
 int * svn_fs_fs__serialize_l2p_header ;
 int * svn_fs_fs__serialize_l2p_page ;
 int * svn_fs_fs__serialize_manifest ;
 int * svn_fs_fs__serialize_mergeinfo ;
 int * svn_fs_fs__serialize_node_revision ;
 int * svn_fs_fs__serialize_p2l_header ;
 int * svn_fs_fs__serialize_p2l_page ;
 int * svn_fs_fs__serialize_properties ;
 int * svn_fs_fs__serialize_raw_window ;
 int * svn_fs_fs__serialize_rep_header ;
 int * svn_fs_fs__serialize_revprops ;
 int * svn_fs_fs__serialize_txdelta_window ;

svn_error_t *
svn_fs_fs__initialize_caches(svn_fs_t *fs,
                             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *prefix = apr_pstrcat(pool,
                                   "fsfs:", fs->uuid,
                                   "/", normalize_key_part(fs->path, pool),
                                   ":",
                                   SVN_VA_NULL);
  svn_membuffer_t *membuffer;
  svn_boolean_t no_handler = ffd->fail_stop;
  svn_boolean_t cache_txdeltas;
  svn_boolean_t cache_fulltexts;
  svn_boolean_t cache_nodeprops;
  const char *cache_namespace;
  svn_boolean_t has_namespace;


  SVN_ERR(read_config(&cache_namespace,
                      &cache_txdeltas,
                      &cache_fulltexts,
                      &cache_nodeprops,
                      fs,
                      pool));

  prefix = apr_pstrcat(pool, "ns:", cache_namespace, ":", prefix, SVN_VA_NULL);
  has_namespace = strlen(cache_namespace) > 0;

  membuffer = svn_cache__get_global_membuffer_cache();
  SVN_ERR(create_cache(&(ffd->rev_root_id_cache),
                       ((void*)0),
                       membuffer,
                       1, 50,
                       svn_fs_fs__serialize_id,
                       svn_fs_fs__deserialize_id,
                       sizeof(svn_revnum_t),
                       apr_pstrcat(pool, prefix, "RRI", SVN_VA_NULL),
                       0,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));



  SVN_ERR(create_cache(&(ffd->rev_node_cache),
                       ((void*)0),
                       membuffer,
                       1, 8,
                       svn_fs_fs__dag_serialize,
                       svn_fs_fs__dag_deserialize,
                       APR_HASH_KEY_STRING,
                       apr_pstrcat(pool, prefix, "DAG", SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_LOW_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));


  ffd->dag_node_cache = svn_fs_fs__create_dag_cache(fs->pool);


  SVN_ERR(create_cache(&(ffd->dir_cache),
                       ((void*)0),
                       membuffer,
                       1, 8,
                       svn_fs_fs__serialize_dir_entries,
                       svn_fs_fs__deserialize_dir_entries,
                       sizeof(pair_cache_key_t),
                       apr_pstrcat(pool, prefix, "DIR", SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));



  SVN_ERR(create_cache(&(ffd->packed_offset_cache),
                       ((void*)0),
                       membuffer,
                       8, 1,
                       svn_fs_fs__serialize_manifest,
                       svn_fs_fs__deserialize_manifest,
                       sizeof(svn_revnum_t),
                       apr_pstrcat(pool, prefix, "PACK-MANIFEST",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));


  SVN_ERR(create_cache(&(ffd->node_revision_cache),
                       ((void*)0),
                       membuffer,
                       2, 16,
                       svn_fs_fs__serialize_node_revision,
                       svn_fs_fs__deserialize_node_revision,
                       sizeof(pair_cache_key_t),
                       apr_pstrcat(pool, prefix, "NODEREVS", SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));


  SVN_ERR(create_cache(&(ffd->rep_header_cache),
                       ((void*)0),
                       membuffer,
                       1, 200,
                       svn_fs_fs__serialize_rep_header,
                       svn_fs_fs__deserialize_rep_header,
                       sizeof(pair_cache_key_t),
                       apr_pstrcat(pool, prefix, "REPHEADER", SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));


  SVN_ERR(create_cache(&(ffd->changes_cache),
                       ((void*)0),
                       membuffer,
                       1, 8,
                       svn_fs_fs__serialize_changes,
                       svn_fs_fs__deserialize_changes,
                       sizeof(pair_cache_key_t),
                       apr_pstrcat(pool, prefix, "CHANGES", SVN_VA_NULL),
                       0,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));


  SVN_ERR(create_cache(&(ffd->revprop_cache),
                       ((void*)0),
                       membuffer,
                       8, 20,
                       svn_fs_fs__serialize_revprops,
                       svn_fs_fs__deserialize_revprops,
                       sizeof(pair_cache_key_t),
                       apr_pstrcat(pool, prefix, "REVPROP", SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                       TRUE,
                       fs,
                       no_handler,
                       fs->pool, pool));


  if (cache_fulltexts)
    {
      SVN_ERR(create_cache(&(ffd->fulltext_cache),
                           ffd->memcache,
                           membuffer,
                           0, 0,

                           ((void*)0), ((void*)0),
                           sizeof(pair_cache_key_t),
                           apr_pstrcat(pool, prefix, "TEXT", SVN_VA_NULL),
                           SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                           has_namespace,
                           fs,
                           no_handler,
                           fs->pool, pool));

      SVN_ERR(create_cache(&(ffd->mergeinfo_cache),
                           ((void*)0),
                           membuffer,
                           0, 0,
                           svn_fs_fs__serialize_mergeinfo,
                           svn_fs_fs__deserialize_mergeinfo,
                           APR_HASH_KEY_STRING,
                           apr_pstrcat(pool, prefix, "MERGEINFO",
                                       SVN_VA_NULL),
                           0,
                           has_namespace,
                           fs,
                           no_handler,
                           fs->pool, pool));

      SVN_ERR(create_cache(&(ffd->mergeinfo_existence_cache),
                           ((void*)0),
                           membuffer,
                           0, 0,

                           ((void*)0), ((void*)0),
                           APR_HASH_KEY_STRING,
                           apr_pstrcat(pool, prefix, "HAS_MERGEINFO",
                                       SVN_VA_NULL),
                           0,
                           has_namespace,
                           fs,
                           no_handler,
                           fs->pool, pool));
    }
  else
    {
      ffd->fulltext_cache = ((void*)0);
      ffd->mergeinfo_cache = ((void*)0);
      ffd->mergeinfo_existence_cache = ((void*)0);
    }


  if (cache_nodeprops)
    {
      SVN_ERR(create_cache(&(ffd->properties_cache),
                           ((void*)0),
                           membuffer,
                           0, 0,
                           svn_fs_fs__serialize_properties,
                           svn_fs_fs__deserialize_properties,
                           sizeof(pair_cache_key_t),
                           apr_pstrcat(pool, prefix, "PROP",
                                       SVN_VA_NULL),
                           SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                           has_namespace,
                           fs,
                           no_handler,
                           fs->pool, pool));
    }
  else
    {
      ffd->properties_cache = ((void*)0);
    }


  if (cache_txdeltas)
    {
      SVN_ERR(create_cache(&(ffd->raw_window_cache),
                           ((void*)0),
                           membuffer,
                           0, 0,
                           svn_fs_fs__serialize_raw_window,
                           svn_fs_fs__deserialize_raw_window,
                           sizeof(window_cache_key_t),
                           apr_pstrcat(pool, prefix, "RAW_WINDOW",
                                       SVN_VA_NULL),
                           SVN_CACHE__MEMBUFFER_LOW_PRIORITY,
                           has_namespace,
                           fs,
                           no_handler,
                           fs->pool, pool));

      SVN_ERR(create_cache(&(ffd->txdelta_window_cache),
                           ((void*)0),
                           membuffer,
                           0, 0,
                           svn_fs_fs__serialize_txdelta_window,
                           svn_fs_fs__deserialize_txdelta_window,
                           sizeof(window_cache_key_t),
                           apr_pstrcat(pool, prefix, "TXDELTA_WINDOW",
                                       SVN_VA_NULL),
                           SVN_CACHE__MEMBUFFER_LOW_PRIORITY,
                           has_namespace,
                           fs,
                           no_handler,
                           fs->pool, pool));

      SVN_ERR(create_cache(&(ffd->combined_window_cache),
                           ((void*)0),
                           membuffer,
                           0, 0,

                           ((void*)0), ((void*)0),
                           sizeof(window_cache_key_t),
                           apr_pstrcat(pool, prefix, "COMBINED_WINDOW",
                                       SVN_VA_NULL),
                           SVN_CACHE__MEMBUFFER_LOW_PRIORITY,
                           has_namespace,
                           fs,
                           no_handler,
                           fs->pool, pool));
    }
  else
    {
      ffd->txdelta_window_cache = ((void*)0);
      ffd->combined_window_cache = ((void*)0);
    }

  SVN_ERR(create_cache(&(ffd->l2p_header_cache),
                       ((void*)0),
                       membuffer,
                       8, 16,



                       svn_fs_fs__serialize_l2p_header,
                       svn_fs_fs__deserialize_l2p_header,
                       sizeof(pair_cache_key_t),
                       apr_pstrcat(pool, prefix, "L2P_HEADER",
                                   (char *)((void*)0)),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));
  SVN_ERR(create_cache(&(ffd->l2p_page_cache),
                       ((void*)0),
                       membuffer,
                       8, 16,



                       svn_fs_fs__serialize_l2p_page,
                       svn_fs_fs__deserialize_l2p_page,
                       sizeof(svn_fs_fs__page_cache_key_t),
                       apr_pstrcat(pool, prefix, "L2P_PAGE",
                                   (char *)((void*)0)),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));
  SVN_ERR(create_cache(&(ffd->p2l_header_cache),
                       ((void*)0),
                       membuffer,
                       4, 1,
                       svn_fs_fs__serialize_p2l_header,
                       svn_fs_fs__deserialize_p2l_header,
                       sizeof(pair_cache_key_t),
                       apr_pstrcat(pool, prefix, "P2L_HEADER",
                                   (char *)((void*)0)),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));
  SVN_ERR(create_cache(&(ffd->p2l_page_cache),
                       ((void*)0),
                       membuffer,
                       4, 1,
                       svn_fs_fs__serialize_p2l_page,
                       svn_fs_fs__deserialize_p2l_page,
                       sizeof(svn_fs_fs__page_cache_key_t),
                       apr_pstrcat(pool, prefix, "P2L_PAGE",
                                   (char *)((void*)0)),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler,
                       fs->pool, pool));

  return SVN_NO_ERROR;
}

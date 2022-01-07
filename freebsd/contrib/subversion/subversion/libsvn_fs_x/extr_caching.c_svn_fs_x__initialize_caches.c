
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_membuffer_t ;
typedef int svn_fs_x__window_cache_key_t ;
typedef int svn_fs_x__representation_cache_key_t ;
typedef int svn_fs_x__pair_cache_key_t ;
typedef int svn_fs_x__page_cache_key_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_6__ {int fail_stop; int p2l_page_cache; int p2l_header_cache; int l2p_page_cache; int l2p_header_cache; int reps_container_cache; int changes_container_cache; int noderevs_container_cache; int combined_window_cache; int txdelta_window_cache; int revprop_cache; int properties_cache; int * memcache; int fulltext_cache; int changes_cache; int rep_header_cache; int node_revision_cache; int dir_cache; int dag_node_cache; int instance_id; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
struct TYPE_7__ {int pool; int path; int uuid; TYPE_1__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY ;
 int SVN_CACHE__MEMBUFFER_HIGH_PRIORITY ;
 int SVN_CACHE__MEMBUFFER_LOW_PRIORITY ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int ,int ,int ,int ) ;
 char* apr_pstrcat (int *,char const*,char const*,char*,...) ;
 int create_cache (int *,int *,int *,int,int,int *,int *,int,char*,int ,int,TYPE_2__*,int,int,int ,int *) ;
 int dump_global_cache_statistics ;
 int normalize_key_part (int ,int *) ;
 int read_config (char const**,int*,int*,int*,int*,TYPE_2__*,int *) ;
 scalar_t__ strlen (char const*) ;
 int * svn_cache__get_global_membuffer_cache () ;
 int svn_fs_x__create_dag_cache (int ) ;
 int * svn_fs_x__deserialize_changes ;
 int * svn_fs_x__deserialize_changes_container ;
 int * svn_fs_x__deserialize_dir_entries ;
 int * svn_fs_x__deserialize_l2p_header ;
 int * svn_fs_x__deserialize_l2p_page ;
 int * svn_fs_x__deserialize_node_revision ;
 int * svn_fs_x__deserialize_noderevs_container ;
 int * svn_fs_x__deserialize_p2l_header ;
 int * svn_fs_x__deserialize_p2l_page ;
 int * svn_fs_x__deserialize_properties ;
 int * svn_fs_x__deserialize_rep_header ;
 int * svn_fs_x__deserialize_reps_container ;
 int * svn_fs_x__deserialize_txdelta_window ;
 int * svn_fs_x__serialize_changes ;
 int * svn_fs_x__serialize_changes_container ;
 int * svn_fs_x__serialize_dir_entries ;
 int * svn_fs_x__serialize_l2p_header ;
 int * svn_fs_x__serialize_l2p_page ;
 int * svn_fs_x__serialize_node_revision ;
 int * svn_fs_x__serialize_noderevs_container ;
 int * svn_fs_x__serialize_p2l_header ;
 int * svn_fs_x__serialize_p2l_page ;
 int * svn_fs_x__serialize_properties ;
 int * svn_fs_x__serialize_rep_header ;
 int * svn_fs_x__serialize_reps_container ;
 int * svn_fs_x__serialize_txdelta_window ;

svn_error_t *
svn_fs_x__initialize_caches(svn_fs_t *fs,
                            apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  const char *prefix = apr_pstrcat(scratch_pool,
                                   "fsx:", fs->uuid,
                                   "--", ffd->instance_id,
                                   "/", normalize_key_part(fs->path,
                                                           scratch_pool),
                                   ":",
                                   SVN_VA_NULL);
  svn_membuffer_t *membuffer;
  svn_boolean_t no_handler = ffd->fail_stop;
  svn_boolean_t cache_txdeltas;
  svn_boolean_t cache_fulltexts;
  svn_boolean_t cache_revprops;
  svn_boolean_t cache_nodeprops;
  const char *cache_namespace;
  svn_boolean_t has_namespace;


  SVN_ERR(read_config(&cache_namespace,
                      &cache_txdeltas,
                      &cache_fulltexts,
                      &cache_revprops,
                      &cache_nodeprops,
                      fs,
                      scratch_pool));

  prefix = apr_pstrcat(scratch_pool, "ns:", cache_namespace, ":", prefix,
                       SVN_VA_NULL);
  has_namespace = strlen(cache_namespace) > 0;

  membuffer = svn_cache__get_global_membuffer_cache();
  ffd->dag_node_cache = svn_fs_x__create_dag_cache(fs->pool);


  SVN_ERR(create_cache(&(ffd->dir_cache),
                       ((void*)0),
                       membuffer,
                       1024, 8,
                       svn_fs_x__serialize_dir_entries,
                       svn_fs_x__deserialize_dir_entries,
                       sizeof(svn_fs_x__id_t),
                       apr_pstrcat(scratch_pool, prefix, "DIR", SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->node_revision_cache),
                       ((void*)0),
                       membuffer,
                       32, 32,
                       svn_fs_x__serialize_node_revision,
                       svn_fs_x__deserialize_node_revision,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "NODEREVS",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->rep_header_cache),
                       ((void*)0),
                       membuffer,
                       1, 1000,
                       svn_fs_x__serialize_rep_header,
                       svn_fs_x__deserialize_rep_header,
                       sizeof(svn_fs_x__representation_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "REPHEADER",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->changes_cache),
                       ((void*)0),
                       membuffer,
                       1, 8,
                       svn_fs_x__serialize_changes,
                       svn_fs_x__deserialize_changes,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "CHANGES",
                                   SVN_VA_NULL),
                       0,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->fulltext_cache),
                       ffd->memcache,
                       membuffer,
                       0, 0,

                       ((void*)0), ((void*)0),
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "TEXT",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, !cache_fulltexts,
                       fs->pool, scratch_pool));

  SVN_ERR(create_cache(&(ffd->properties_cache),
                       ((void*)0),
                       membuffer,
                       0, 0,
                       svn_fs_x__serialize_properties,
                       svn_fs_x__deserialize_properties,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "PROP",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, !cache_nodeprops,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->revprop_cache),
                       ((void*)0),
                       membuffer,
                       0, 0,
                       svn_fs_x__serialize_properties,
                       svn_fs_x__deserialize_properties,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "REVPROP",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, !cache_revprops,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->txdelta_window_cache),
                       ((void*)0),
                       membuffer,
                       0, 0,
                       svn_fs_x__serialize_txdelta_window,
                       svn_fs_x__deserialize_txdelta_window,
                       sizeof(svn_fs_x__window_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "TXDELTA_WINDOW",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_LOW_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, !cache_txdeltas,
                       fs->pool, scratch_pool));

  SVN_ERR(create_cache(&(ffd->combined_window_cache),
                       ((void*)0),
                       membuffer,
                       0, 0,

                       ((void*)0), ((void*)0),
                       sizeof(svn_fs_x__window_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "COMBINED_WINDOW",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_LOW_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, !cache_txdeltas,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->noderevs_container_cache),
                       ((void*)0),
                       membuffer,
                       16, 4,
                       svn_fs_x__serialize_noderevs_container,
                       svn_fs_x__deserialize_noderevs_container,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "NODEREVSCNT",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));
  SVN_ERR(create_cache(&(ffd->changes_container_cache),
                       ((void*)0),
                       membuffer,
                       0, 0,
                       svn_fs_x__serialize_changes_container,
                       svn_fs_x__deserialize_changes_container,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "CHANGESCNT",
                                   SVN_VA_NULL),
                       0,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));
  SVN_ERR(create_cache(&(ffd->reps_container_cache),
                       ((void*)0),
                       membuffer,
                       0, 0,
                       svn_fs_x__serialize_reps_container,
                       svn_fs_x__deserialize_reps_container,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "REPSCNT",
                                   SVN_VA_NULL),
                       0,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));


  SVN_ERR(create_cache(&(ffd->l2p_header_cache),
                       ((void*)0),
                       membuffer,
                       64, 16,

                       svn_fs_x__serialize_l2p_header,
                       svn_fs_x__deserialize_l2p_header,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "L2P_HEADER",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));
  SVN_ERR(create_cache(&(ffd->l2p_page_cache),
                       ((void*)0),
                       membuffer,
                       64, 16,

                       svn_fs_x__serialize_l2p_page,
                       svn_fs_x__deserialize_l2p_page,
                       sizeof(svn_fs_x__page_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "L2P_PAGE",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));
  SVN_ERR(create_cache(&(ffd->p2l_header_cache),
                       ((void*)0),
                       membuffer,
                       4, 1,
                       svn_fs_x__serialize_p2l_header,
                       svn_fs_x__deserialize_p2l_header,
                       sizeof(svn_fs_x__pair_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "P2L_HEADER",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));
  SVN_ERR(create_cache(&(ffd->p2l_page_cache),
                       ((void*)0),
                       membuffer,
                       4, 16,
                       svn_fs_x__serialize_p2l_page,
                       svn_fs_x__deserialize_p2l_page,
                       sizeof(svn_fs_x__page_cache_key_t),
                       apr_pstrcat(scratch_pool, prefix, "P2L_PAGE",
                                   SVN_VA_NULL),
                       SVN_CACHE__MEMBUFFER_HIGH_PRIORITY,
                       has_namespace,
                       fs,
                       no_handler, FALSE,
                       fs->pool, scratch_pool));

  return SVN_NO_ERROR;
}

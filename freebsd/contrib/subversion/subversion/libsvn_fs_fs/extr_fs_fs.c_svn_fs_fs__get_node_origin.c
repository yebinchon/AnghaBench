
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
struct TYPE_7__ {int number; } ;
typedef TYPE_2__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_INT64_BUFFER_SIZE ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_hash_get (int *,char*,int ) ;
 int apr_pstrdup (int *,int ) ;
 int get_node_origins_from_file (int *,int **,int ,int *) ;
 int svn__ui64tobase36 (char*,int ) ;
 int svn_fs_fs__id_parse (int const**,int ,int *) ;
 int svn_fs_fs__path_node_origin (int *,TYPE_2__ const*,int *) ;

svn_error_t *
svn_fs_fs__get_node_origin(const svn_fs_id_t **origin_id,
                           svn_fs_t *fs,
                           const svn_fs_fs__id_part_t *node_id,
                           apr_pool_t *pool)
{
  apr_hash_t *node_origins;

  *origin_id = ((void*)0);
  SVN_ERR(get_node_origins_from_file(fs, &node_origins,
                                     svn_fs_fs__path_node_origin(fs, node_id,
                                                                 pool),
                                     pool));
  if (node_origins)
    {
      char node_id_ptr[SVN_INT64_BUFFER_SIZE];
      apr_size_t len = svn__ui64tobase36(node_id_ptr, node_id->number);
      svn_string_t *origin_id_str
        = apr_hash_get(node_origins, node_id_ptr, len);

      if (origin_id_str)
        SVN_ERR(svn_fs_fs__id_parse(origin_id,
                                    apr_pstrdup(pool, origin_id_str->data),
                                    pool));
    }
  return SVN_NO_ERROR;
}

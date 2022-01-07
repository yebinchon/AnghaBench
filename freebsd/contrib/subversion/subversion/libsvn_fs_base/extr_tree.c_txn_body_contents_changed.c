
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct things_changed_args {int* changed_p; int strict; int path2; int root2; int path1; int root1; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_dag (int **,int ,int ,TYPE_1__*,int ) ;
 int svn_checksum_match (int *,int *) ;
 int svn_checksum_md5 ;
 int svn_checksum_sha1 ;
 int svn_fs_base__dag_file_checksum (int **,int ,int *,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_contents (int **,int *,TYPE_1__*,int ) ;
 int svn_fs_base__things_different (int *,int*,int *,int *,TYPE_1__*,int ) ;
 int svn_stream_contents_same2 (int *,int *,int *,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_contents_changed(void *baton, trail_t *trail)
{
  struct things_changed_args *args = baton;
  dag_node_t *node1, *node2;
  svn_checksum_t *checksum1, *checksum2;
  svn_stream_t *stream1, *stream2;
  svn_boolean_t same;

  SVN_ERR(get_dag(&node1, args->root1, args->path1, trail, trail->pool));
  SVN_ERR(get_dag(&node2, args->root2, args->path2, trail, trail->pool));
  SVN_ERR(svn_fs_base__things_different(((void*)0), args->changed_p,
                                        node1, node2, trail, trail->pool));


  if (!args->strict || !*args->changed_p)
    return SVN_NO_ERROR;




  SVN_ERR(svn_fs_base__dag_file_checksum(&checksum1, svn_checksum_md5,
                                         node1, trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_file_checksum(&checksum2, svn_checksum_md5,
                                         node2, trail, trail->pool));


  if (!svn_checksum_match(checksum1, checksum2))
    return SVN_NO_ERROR;



  SVN_ERR(svn_fs_base__dag_file_checksum(&checksum1, svn_checksum_sha1,
                                         node1, trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_file_checksum(&checksum2, svn_checksum_sha1,
                                         node2, trail, trail->pool));


  if (checksum1 && checksum2)
    {
      *args->changed_p = !svn_checksum_match(checksum1, checksum2);
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_fs_base__dag_get_contents(&stream1, node1, trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_get_contents(&stream2, node2, trail, trail->pool));
  SVN_ERR(svn_stream_contents_same2(&same, stream1, stream2, trail->pool));


  *args->changed_p = !same;
  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_6__ {int len; void* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int created_path; int const* fresh_root_predecessor_id; int id; int node_pool; scalar_t__ node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ SVN_TEMP_SERIALIZER__OVERHEAD ;
 int svn_fs_fs__dag_check_mutable (TYPE_2__*) ;
 int svn_fs_fs__id_serialize (int *,int const**) ;
 int svn_fs_fs__noderev_serialize (int *,scalar_t__*) ;
 int svn_temp_serializer__add_string (int *,int *) ;
 TYPE_1__* svn_temp_serializer__get (int *) ;
 int * svn_temp_serializer__init (TYPE_2__*,int,scalar_t__,int *) ;
 int svn_temp_serializer__set_null (int *,void const* const*) ;

svn_error_t *
svn_fs_fs__dag_serialize(void **data,
                         apr_size_t *data_len,
                         void *in,
                         apr_pool_t *pool)
{
  dag_node_t *node = in;
  svn_stringbuf_t *serialized;


  svn_temp_serializer__context_t *context =
      svn_temp_serializer__init(node,
                                sizeof(*node),
                                1024 - SVN_TEMP_SERIALIZER__OVERHEAD,
                                pool);


  if (node->node_revision && !svn_fs_fs__dag_check_mutable(node))
    svn_fs_fs__noderev_serialize(context, &node->node_revision);
  else
    svn_temp_serializer__set_null(context,
                                  (const void * const *)&node->node_revision);


  svn_temp_serializer__set_null(context,
                                (const void * const *)&node->node_pool);


  svn_fs_fs__id_serialize(context, (const svn_fs_id_t **)&node->id);
  svn_fs_fs__id_serialize(context, &node->fresh_root_predecessor_id);
  svn_temp_serializer__add_string(context, &node->created_path);


  serialized = svn_temp_serializer__get(context);
  *data = serialized->data;
  *data_len = serialized->len;

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_3__ {int len; void* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ SVN_TEMP_SERIALIZER__OVERHEAD ;
 int svn_fs_fs__noderev_serialize (int *,int **) ;
 TYPE_1__* svn_temp_serializer__get (int *) ;
 int * svn_temp_serializer__init (int *,int ,scalar_t__,int *) ;

svn_error_t *
svn_fs_fs__serialize_node_revision(void **buffer,
                                   apr_size_t *buffer_size,
                                   void *item,
                                   apr_pool_t *pool)
{
  svn_stringbuf_t *serialized;
  node_revision_t *noderev = item;



  svn_temp_serializer__context_t *context =
      svn_temp_serializer__init(((void*)0), 0,
                                1024 - SVN_TEMP_SERIALIZER__OVERHEAD,
                                pool);


  svn_fs_fs__noderev_serialize(context, &noderev);


  serialized = svn_temp_serializer__get(context);
  *buffer = serialized->data;
  *buffer_size = serialized->len;

  return SVN_NO_ERROR;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_6__ {int len; void* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_7__ {TYPE_5__* noderevs; TYPE_5__* reps; TYPE_5__* ids; int paths; } ;
typedef TYPE_2__ svn_fs_x__noderevs_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {int elt_size; int nelts; } ;


 int * SVN_NO_ERROR ;
 int svn_fs_x__serialize_apr_array (int *,TYPE_5__**) ;
 int svn_fs_x__serialize_string_table (int *,int *) ;
 TYPE_1__* svn_temp_serializer__get (int *) ;
 int * svn_temp_serializer__init (TYPE_2__*,int,int,int *) ;

svn_error_t *
svn_fs_x__serialize_noderevs_container(void **data,
                                       apr_size_t *data_len,
                                       void *in,
                                       apr_pool_t *pool)
{
  svn_fs_x__noderevs_t *noderevs = in;
  svn_stringbuf_t *serialized;
  apr_size_t size
    = noderevs->ids->elt_size * noderevs->ids->nelts
    + noderevs->reps->elt_size * noderevs->reps->nelts
    + noderevs->noderevs->elt_size * noderevs->noderevs->nelts
    + 10 * noderevs->noderevs->elt_size
    + 100;


  svn_temp_serializer__context_t *context
    = svn_temp_serializer__init(noderevs, sizeof(*noderevs), size, pool);


  svn_fs_x__serialize_string_table(context, &noderevs->paths);
  svn_fs_x__serialize_apr_array(context, &noderevs->ids);
  svn_fs_x__serialize_apr_array(context, &noderevs->reps);
  svn_fs_x__serialize_apr_array(context, &noderevs->noderevs);


  serialized = svn_temp_serializer__get(context);

  *data = serialized->data;
  *data_len = serialized->len;

  return SVN_NO_ERROR;
}

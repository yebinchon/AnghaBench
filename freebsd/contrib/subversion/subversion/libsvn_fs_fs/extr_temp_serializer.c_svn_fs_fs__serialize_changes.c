
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_5__ {int len; void* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_6__ {int count; int * changes; } ;
typedef TYPE_2__ svn_fs_fs__changes_list_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int serialize_change (int *,int *) ;
 TYPE_1__* svn_temp_serializer__get (int *) ;
 int * svn_temp_serializer__init (TYPE_2__*,int,int,int *) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

svn_error_t *
svn_fs_fs__serialize_changes(void **data,
                             apr_size_t *data_len,
                             void *in,
                             apr_pool_t *pool)
{
  svn_fs_fs__changes_list_t *changes = in;
  svn_temp_serializer__context_t *context;
  svn_stringbuf_t *serialized;
  int i;


  context = svn_temp_serializer__init(changes,
                                      sizeof(*changes),
                                      changes->count * 250,
                                      pool);

  svn_temp_serializer__push(context,
                            (const void * const *)&changes->changes,
                            changes->count * sizeof(*changes->changes));

  for (i = 0; i < changes->count; ++i)
    serialize_change(context, &changes->changes[i]);

  svn_temp_serializer__pop(context);


  serialized = svn_temp_serializer__get(context);

  *data = serialized->data;
  *data_len = serialized->len;

  return SVN_NO_ERROR;
}

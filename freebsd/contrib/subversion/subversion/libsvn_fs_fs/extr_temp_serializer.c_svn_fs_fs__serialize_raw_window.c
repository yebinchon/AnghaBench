
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
struct TYPE_7__ {int len; void* data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
struct TYPE_6__ {scalar_t__ len; int data; } ;
struct TYPE_8__ {TYPE_1__ window; } ;
typedef TYPE_3__ svn_fs_fs__raw_cached_window_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_temp_serializer__add_leaf (int *,void const* const*,scalar_t__) ;
 TYPE_2__* svn_temp_serializer__get (int *) ;
 int * svn_temp_serializer__init (TYPE_3__*,int,scalar_t__,int *) ;

svn_error_t *
svn_fs_fs__serialize_raw_window(void **buffer,
                                apr_size_t *buffer_size,
                                void *item,
                                apr_pool_t *pool)
{
  svn_fs_fs__raw_cached_window_t *window = item;
  svn_stringbuf_t *serialized;



  svn_temp_serializer__context_t *context =
      svn_temp_serializer__init(window,
                                sizeof(*window),
                                sizeof(*window) + window->window.len + 16,
                                pool);


  svn_temp_serializer__add_leaf(context,
                                (const void * const *)&window->window.data,
                                window->window.len + 1);


  serialized = svn_temp_serializer__get(context);

  *buffer = serialized->data;
  *buffer_size = serialized->len;

  return SVN_NO_ERROR;
}

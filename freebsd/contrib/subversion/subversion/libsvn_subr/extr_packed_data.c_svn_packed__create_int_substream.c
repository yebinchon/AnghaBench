
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* private_data; scalar_t__ buffer_used; } ;
typedef TYPE_1__ svn_packed__int_stream_t ;
typedef void* svn_boolean_t ;
struct TYPE_8__ {TYPE_1__* first_substream; TYPE_1__* next; int substream_count; TYPE_1__* last_substream; TYPE_1__* current_substream; int is_last; int pool; void* is_signed; void* diff; } ;
typedef TYPE_2__ packed_int_private_t ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* apr_palloc (int ,int) ;
 TYPE_2__* apr_pcalloc (int ,int) ;

svn_packed__int_stream_t *
svn_packed__create_int_substream(svn_packed__int_stream_t *parent,
                                 svn_boolean_t diff,
                                 svn_boolean_t signed_ints)
{
  packed_int_private_t *parent_private = parent->private_data;


  packed_int_private_t *private_data
    = apr_pcalloc(parent_private->pool, sizeof(*private_data));
  svn_packed__int_stream_t *stream
    = apr_palloc(parent_private->pool, sizeof(*stream));

  private_data->diff = diff;
  private_data->is_signed = signed_ints;
  private_data->is_last = TRUE;
  private_data->pool = parent_private->pool;

  stream->buffer_used = 0;
  stream->private_data = private_data;


  if (parent_private->last_substream)
    {
      packed_int_private_t *previous_private_data
        = parent_private->last_substream->private_data;
      previous_private_data->next = stream;
      previous_private_data->is_last = FALSE;
    }
  else
    {
      parent_private->first_substream = stream;
      parent_private->current_substream = stream;
    }

  parent_private->last_substream = stream;
  parent_private->substream_count++;
  private_data->next = parent_private->first_substream;

  return stream;
}

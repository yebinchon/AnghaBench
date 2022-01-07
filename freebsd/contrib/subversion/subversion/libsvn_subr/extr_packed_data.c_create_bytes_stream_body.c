
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int byte_stream_count; TYPE_2__* last_byte_stream; TYPE_2__* first_byte_stream; int pool; } ;
typedef TYPE_1__ svn_packed__data_root_t ;
struct TYPE_7__ {struct TYPE_7__* next; int packed; } ;
typedef TYPE_2__ svn_packed__byte_stream_t ;


 TYPE_2__* apr_pcalloc (int ,int) ;
 int svn_stringbuf_create_empty (int ) ;

__attribute__((used)) static svn_packed__byte_stream_t *
create_bytes_stream_body(svn_packed__data_root_t *root)
{
  svn_packed__byte_stream_t *stream
    = apr_pcalloc(root->pool, sizeof(*stream));

  stream->packed = svn_stringbuf_create_empty(root->pool);

  if (root->last_byte_stream)
    root->last_byte_stream->next = stream;
  else
    root->first_byte_stream = stream;

  root->last_byte_stream = stream;
  root->byte_stream_count++;

  return stream;
}

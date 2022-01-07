
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int int_stream_count; } ;
typedef TYPE_1__ svn_packed__data_root_t ;
struct TYPE_9__ {int lengths_stream; int lengths_stream_index; } ;
typedef TYPE_2__ svn_packed__byte_stream_t ;


 int FALSE ;
 TYPE_2__* create_bytes_stream_body (TYPE_1__*) ;
 int svn_packed__create_int_stream (TYPE_1__*,int ,int ) ;

svn_packed__byte_stream_t *
svn_packed__create_bytes_stream(svn_packed__data_root_t *root)
{
  svn_packed__byte_stream_t *stream
    = create_bytes_stream_body(root);

  stream->lengths_stream_index = root->int_stream_count;
  stream->lengths_stream = svn_packed__create_int_stream(root, FALSE, FALSE);

  return stream;
}

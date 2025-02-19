
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_23__ {scalar_t__ private_data; } ;
typedef TYPE_2__ svn_packed__int_stream_t ;
struct TYPE_24__ {TYPE_4__* first_byte_stream; TYPE_2__* first_int_stream; int byte_stream_count; int int_stream_count; } ;
typedef TYPE_3__ svn_packed__data_root_t ;
struct TYPE_25__ {struct TYPE_25__* next; } ;
typedef TYPE_4__ svn_packed__byte_stream_t ;
typedef int svn_error_t ;
struct TYPE_26__ {TYPE_2__* next; } ;
typedef TYPE_5__ packed_int_private_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int append_byte_stream (TYPE_4__*,TYPE_1__*) ;
 int append_int_stream (TYPE_2__*,TYPE_1__*) ;
 int packed_byte_stream_length (TYPE_4__*) ;
 int packed_int_stream_length (TYPE_2__*) ;
 int svn_stream_write (int *,int ,int *) ;
 TYPE_1__* svn_stringbuf_create_ensure (int,int *) ;
 int svn_stringbuf_ensure (TYPE_1__*,int ) ;
 int write_byte_stream_structure (TYPE_1__*,TYPE_4__*) ;
 int write_int_stream_structure (TYPE_1__*,TYPE_2__*) ;
 int write_packed_uint (TYPE_1__*,int ) ;
 int write_stream_data (int *,TYPE_1__*,TYPE_1__*) ;
 int write_stream_uint (int *,int ) ;

svn_error_t *
svn_packed__data_write(svn_stream_t *stream,
                       svn_packed__data_root_t *root,
                       apr_pool_t *scratch_pool)
{
  svn_packed__int_stream_t *int_stream;
  svn_packed__byte_stream_t *byte_stream;


  svn_stringbuf_t *compressed
    = svn_stringbuf_create_ensure(1024, scratch_pool);
  svn_stringbuf_t *uncompressed
    = svn_stringbuf_create_ensure(1024, scratch_pool);


  svn_stringbuf_t *tree_struct
    = svn_stringbuf_create_ensure(127, scratch_pool);

  write_packed_uint(tree_struct, root->int_stream_count);
  write_int_stream_structure(tree_struct, root->first_int_stream);

  write_packed_uint(tree_struct, root->byte_stream_count);
  write_byte_stream_structure(tree_struct, root->first_byte_stream);

  SVN_ERR(write_stream_uint(stream, tree_struct->len));
  SVN_ERR(svn_stream_write(stream, tree_struct->data, &tree_struct->len));



  for (int_stream = root->first_int_stream;
       int_stream;
       int_stream = ((packed_int_private_t*)int_stream->private_data)->next)
    {
      apr_size_t len = packed_int_stream_length(int_stream);
      svn_stringbuf_ensure(uncompressed, len);

      append_int_stream(int_stream, uncompressed);
      SVN_ERR(write_stream_data(stream, uncompressed, compressed));
    }

  for (byte_stream = root->first_byte_stream;
       byte_stream;
       byte_stream = byte_stream->next)
    {
      apr_size_t len = packed_byte_stream_length(byte_stream);
      svn_stringbuf_ensure(uncompressed, len);

      append_byte_stream(byte_stream, uncompressed);
      SVN_ERR(write_stream_data(stream, uncompressed, compressed));
    }

  return SVN_NO_ERROR;
}

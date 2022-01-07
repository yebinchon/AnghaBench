
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_24__ {scalar_t__ private_data; } ;
typedef TYPE_2__ svn_packed__int_stream_t ;
struct TYPE_25__ {TYPE_4__* first_byte_stream; TYPE_2__* first_int_stream; } ;
typedef TYPE_3__ svn_packed__data_root_t ;
struct TYPE_26__ {struct TYPE_26__* next; } ;
typedef TYPE_4__ svn_packed__byte_stream_t ;
typedef int svn_error_t ;
struct TYPE_27__ {TYPE_2__* next; } ;
typedef TYPE_5__ packed_int_private_t ;
typedef scalar_t__ apr_uint64_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int create_bytes_stream_body (TYPE_3__*) ;
 int packed_byte_stream_length (TYPE_4__*) ;
 int packed_int_stream_length (TYPE_2__*) ;
 int read_byte_stream_structure (TYPE_1__*,int ,TYPE_2__*) ;
 int read_int_stream_structure (TYPE_1__*,int ) ;
 scalar_t__ read_packed_uint (TYPE_1__*) ;
 int read_stream_data (int *,int ,TYPE_1__*,TYPE_1__*) ;
 int read_stream_uint (int *,scalar_t__*) ;
 int svn_packed__create_int_stream (TYPE_3__*,int ,int ) ;
 TYPE_3__* svn_packed__data_create_root (int *) ;
 int svn_stream_read_full (int *,char*,int*) ;
 TYPE_1__* svn_stringbuf_create_ensure (int,int *) ;
 int unflatten_byte_stream (TYPE_4__*,TYPE_1__*,int*) ;
 int unflatten_int_stream (TYPE_2__*,TYPE_1__*,int*) ;

svn_error_t *
svn_packed__data_read(svn_packed__data_root_t **root_p,
                      svn_stream_t *stream,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  apr_uint64_t i;
  apr_uint64_t count;

  svn_packed__int_stream_t *int_stream;
  svn_packed__byte_stream_t *byte_stream;
  svn_packed__data_root_t *root = svn_packed__data_create_root(result_pool);

  svn_stringbuf_t *compressed
    = svn_stringbuf_create_ensure(1024, scratch_pool);
  svn_stringbuf_t *uncompressed
    = svn_stringbuf_create_ensure(1024, scratch_pool);



  apr_uint64_t tree_struct_size;
  svn_stringbuf_t *tree_struct;

  SVN_ERR(read_stream_uint(stream, &tree_struct_size));
  tree_struct
    = svn_stringbuf_create_ensure((apr_size_t)tree_struct_size, scratch_pool);
  tree_struct->len = (apr_size_t)tree_struct_size;

  SVN_ERR(svn_stream_read_full(stream, tree_struct->data, &tree_struct->len));
  tree_struct->data[tree_struct->len] = '\0';



  count = read_packed_uint(tree_struct);
  for (i = 0; i < count; ++i)
    read_int_stream_structure(tree_struct,
                              svn_packed__create_int_stream(root, FALSE,
                                                                 FALSE));

  count = read_packed_uint(tree_struct);
  for (i = 0; i < count; ++i)
    read_byte_stream_structure(tree_struct,
                               create_bytes_stream_body(root),
                               root->first_int_stream);



  for (int_stream = root->first_int_stream;
       int_stream;
       int_stream = ((packed_int_private_t*)int_stream->private_data)->next)
    {
      apr_size_t offset = 0;
      SVN_ERR(read_stream_data(stream,
                               packed_int_stream_length(int_stream),
                               uncompressed, compressed));
      unflatten_int_stream(int_stream, uncompressed, &offset);
    }

  for (byte_stream = root->first_byte_stream;
       byte_stream;
       byte_stream = byte_stream->next)
    {
      apr_size_t offset = 0;
      SVN_ERR(read_stream_data(stream,
                               packed_byte_stream_length(byte_stream),
                               uncompressed, compressed));
      unflatten_byte_stream(byte_stream, uncompressed, &offset);
    }

  *root_p = root;
  return SVN_NO_ERROR;
}

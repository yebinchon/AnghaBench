
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct encode_baton {int output; int linelen; int pool; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int encode_bytes (TYPE_1__*,char const*,scalar_t__,int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int * svn_stream_write (int ,int ,scalar_t__*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
encode_data(void *baton, const char *data, apr_size_t *len)
{
  struct encode_baton *eb = baton;
  apr_pool_t *subpool = svn_pool_create(eb->pool);
  svn_stringbuf_t *encoded = svn_stringbuf_create_empty(subpool);
  apr_size_t enclen;
  svn_error_t *err = SVN_NO_ERROR;


  encode_bytes(encoded, data, *len, &eb->linelen);
  enclen = encoded->len;
  if (enclen != 0)
    err = svn_stream_write(eb->output, encoded->data, &enclen);
  svn_pool_destroy(subpool);
  return err;
}

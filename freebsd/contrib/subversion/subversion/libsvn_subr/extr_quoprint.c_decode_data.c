
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_error_t ;
struct decode_baton {int output; int buflen; int buf; int pool; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int decode_bytes (TYPE_1__*,char const*,scalar_t__,int ,int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;
 int * svn_stream_write (int ,int ,scalar_t__*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static svn_error_t *
decode_data(void *baton, const char *data, apr_size_t *len)
{
  struct decode_baton *db = baton;
  apr_pool_t *subpool;
  svn_stringbuf_t *decoded;
  apr_size_t declen;
  svn_error_t *err = SVN_NO_ERROR;


  subpool = svn_pool_create(db->pool);
  decoded = svn_stringbuf_create_empty(subpool);
  decode_bytes(decoded, data, *len, db->buf, &db->buflen);


  declen = decoded->len;
  if (declen != 0)
    err = svn_stream_write(db->output, decoded->data, &declen);
  svn_pool_destroy(subpool);
  return err;
}

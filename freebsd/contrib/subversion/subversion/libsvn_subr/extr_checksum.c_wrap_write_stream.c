
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
struct TYPE_4__ {unsigned char* digest; int * pool; int ** checksum; int context; int * inner_stream; } ;
typedef TYPE_1__ stream_baton_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int close_handler ;
 int svn_checksum_ctx_create (int ,int *) ;
 int * svn_stream_create (TYPE_1__*,int *) ;
 int svn_stream_set_close (int *,int ) ;
 int svn_stream_set_write (int *,int ) ;
 int write_handler ;

__attribute__((used)) static svn_stream_t *
wrap_write_stream(svn_checksum_t **checksum,
                  unsigned char *digest,
                  svn_stream_t *inner_stream,
                  svn_checksum_kind_t kind,
                  apr_pool_t *pool)
{
  svn_stream_t *outer_stream;

  stream_baton_t *baton = apr_pcalloc(pool, sizeof(*baton));
  baton->inner_stream = inner_stream;
  baton->context = svn_checksum_ctx_create(kind, pool);
  baton->checksum = checksum;
  baton->digest = digest;
  baton->pool = pool;

  outer_stream = svn_stream_create(baton, pool);
  svn_stream_set_write(outer_stream, write_handler);
  svn_stream_set_close(outer_stream, close_handler);

  return outer_stream;
}

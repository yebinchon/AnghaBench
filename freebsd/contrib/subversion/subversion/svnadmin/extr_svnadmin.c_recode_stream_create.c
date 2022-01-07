
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
struct recode_write_baton {int * out; int pool; } ;
typedef int apr_pool_t ;
typedef int FILE ;


 struct recode_write_baton* apr_palloc (int *,int) ;
 int recode_write ;
 int svn_pool_create (int *) ;
 int * svn_stream_create (struct recode_write_baton*,int *) ;
 int svn_stream_set_write (int *,int ) ;

__attribute__((used)) static svn_stream_t *
recode_stream_create(FILE *std_stream, apr_pool_t *pool)
{
  struct recode_write_baton *std_stream_rwb =
    apr_palloc(pool, sizeof(struct recode_write_baton));

  svn_stream_t *rw_stream = svn_stream_create(std_stream_rwb, pool);
  std_stream_rwb->pool = svn_pool_create(pool);
  std_stream_rwb->out = std_stream;
  svn_stream_set_write(rw_stream, recode_write);
  return rw_stream;
}

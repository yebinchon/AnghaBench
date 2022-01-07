
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* dirpath; void* spill_all_contents; void* delete_on_close; void* maxsize; void* blocksize; int * pool; } ;
typedef TYPE_1__ svn_spillbuf_t ;
typedef void* svn_boolean_t ;
typedef void* apr_size_t ;
typedef int apr_pool_t ;



__attribute__((used)) static void
init_spillbuf_extended(svn_spillbuf_t *buf,
                       apr_size_t blocksize,
                       apr_size_t maxsize,
                       svn_boolean_t delete_on_close,
                       svn_boolean_t spill_all_contents,
                       const char *dirpath,
                       apr_pool_t *result_pool)
{
  buf->pool = result_pool;
  buf->blocksize = blocksize;
  buf->maxsize = maxsize;
  buf->delete_on_close = delete_on_close;
  buf->spill_all_contents = spill_all_contents;
  buf->dirpath = dirpath;
}

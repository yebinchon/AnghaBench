
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_t ;
typedef int * (* svn_spillbuf_read_t ) (scalar_t__*,void*,int ,int ,int *) ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct memblock_t {int size; int data; } ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int maybe_seek (scalar_t__*,int *,int *) ;
 int read_data (struct memblock_t**,int *,int *) ;
 int return_buffer (int *,struct memblock_t*) ;
 int * svn_error_trace (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_spillbuf__process(svn_boolean_t *exhausted,
                      svn_spillbuf_t *buf,
                      svn_spillbuf_read_t read_func,
                      void *read_baton,
                      apr_pool_t *scratch_pool)
{
  svn_boolean_t has_seeked = FALSE;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  *exhausted = FALSE;

  while (TRUE)
    {
      struct memblock_t *mem;
      svn_error_t *err;
      svn_boolean_t stop;

      svn_pool_clear(iterpool);



      if (!has_seeked)
        SVN_ERR(maybe_seek(&has_seeked, buf, iterpool));


      SVN_ERR(read_data(&mem, buf, iterpool));
      if (mem == ((void*)0))
        {
          *exhausted = TRUE;
          break;
        }

      err = read_func(&stop, read_baton, mem->data, mem->size, iterpool);

      return_buffer(buf, mem);

      if (err)
        return svn_error_trace(err);


      if (stop)
        break;
    }

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}

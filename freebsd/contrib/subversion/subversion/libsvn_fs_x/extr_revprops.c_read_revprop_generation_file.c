
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int GENERATION_READ_RETRY_COUNT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int apr_sleep (int ) ;
 int apr_thread_yield () ;
 int svn_cstring_atoi64 (int *,int ) ;
 int svn_error_clear (int *) ;
 int * svn_error_trace (int *) ;
 char* svn_fs_x__path_revprop_generation (int *,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_stringbuf_from_file2 (TYPE_1__**,char const*,int *) ;
 int svn_stringbuf_strip_whitespace (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
read_revprop_generation_file(apr_int64_t *current,
                             svn_fs_t *fs,
                             apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  int i;
  svn_error_t *err = SVN_NO_ERROR;
  const char *path = svn_fs_x__path_revprop_generation(fs, scratch_pool);


  for (i = 0; i < GENERATION_READ_RETRY_COUNT; ++i)
    {
      svn_stringbuf_t *buf;

      svn_error_clear(err);
      svn_pool_clear(iterpool);


      err = svn_stringbuf_from_file2(&buf, path, iterpool);



      if (!err)
        {
          svn_stringbuf_strip_whitespace(buf);
          SVN_ERR(svn_cstring_atoi64(current, buf->data));
          break;
        }





      apr_sleep(0);

    }

  svn_pool_destroy(iterpool);


  return svn_error_trace(err);
}

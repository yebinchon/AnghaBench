
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * apr_pcalloc (int *,int) ;
 int init_spillbuf_extended (int *,int ,int ,int ,int ,char const*,int *) ;

svn_spillbuf_t *
svn_spillbuf__create_extended(apr_size_t blocksize,
                              apr_size_t maxsize,
                              svn_boolean_t delete_on_close,
                              svn_boolean_t spill_all_contents,
                              const char *dirpath,
                              apr_pool_t *result_pool)
{
  svn_spillbuf_t *buf = apr_pcalloc(result_pool, sizeof(*buf));
  init_spillbuf_extended(buf, blocksize, maxsize,
                         delete_on_close, spill_all_contents, dirpath,
                         result_pool);
  return buf;
}

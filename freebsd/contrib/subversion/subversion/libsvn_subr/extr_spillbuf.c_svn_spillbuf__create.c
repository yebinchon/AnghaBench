
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * apr_pcalloc (int *,int) ;
 int init_spillbuf (int *,int ,int ,int *) ;

svn_spillbuf_t *
svn_spillbuf__create(apr_size_t blocksize,
                     apr_size_t maxsize,
                     apr_pool_t *result_pool)
{
  svn_spillbuf_t *buf = apr_pcalloc(result_pool, sizeof(*buf));
  init_spillbuf(buf, blocksize, maxsize, result_pool);
  return buf;
}

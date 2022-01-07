
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_spillbuf_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int TRUE ;
 int init_spillbuf_extended (int *,int ,int ,int ,int ,int *,int *) ;

__attribute__((used)) static void
init_spillbuf(svn_spillbuf_t *buf,
              apr_size_t blocksize,
              apr_size_t maxsize,
              apr_pool_t *result_pool)
{
  init_spillbuf_extended(buf, blocksize, maxsize,
                         TRUE, FALSE, ((void*)0),
                         result_pool);
}

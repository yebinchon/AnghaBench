
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
typedef TYPE_1__ svn_spillbuf_reader_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_spillbuf__create (int ,int ,int *) ;

svn_spillbuf_reader_t *
svn_spillbuf__reader_create(apr_size_t blocksize,
                            apr_size_t maxsize,
                            apr_pool_t *result_pool)
{
  svn_spillbuf_reader_t *sbr = apr_pcalloc(result_pool, sizeof(*sbr));
  sbr->buf = svn_spillbuf__create(blocksize, maxsize, result_pool);
  return sbr;
}

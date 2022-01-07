
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int apr_pool_t ;


 int BUFFER_BLOCK_SIZE ;
 int BUFFER_MAX_SIZE ;
 int svn_spillbuf__create (int ,int ,int *) ;
 int * svn_stream__from_spillbuf (int ,int *) ;

svn_stream_t *
svn_stream_buffered(apr_pool_t *result_pool)
{
  return svn_stream__from_spillbuf(svn_spillbuf__create(BUFFER_BLOCK_SIZE,
                                                        BUFFER_MAX_SIZE,
                                                        result_pool),
                                   result_pool);
}

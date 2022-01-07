
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_stream_t ;
typedef int svn_stream_t ;
typedef int apr_pool_t ;


 int TRUE ;
 int svn_txdelta2 (int **,int *,int *,int ,int *) ;

void
svn_txdelta(svn_txdelta_stream_t **stream,
            svn_stream_t *source,
            svn_stream_t *target,
            apr_pool_t *pool)
{
  svn_txdelta2(stream, source, target, TRUE, pool);
}

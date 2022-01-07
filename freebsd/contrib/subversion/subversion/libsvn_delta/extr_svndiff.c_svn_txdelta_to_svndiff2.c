
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int apr_pool_t ;


 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int svn_txdelta_to_svndiff3 (int *,void**,int *,int,int ,int *) ;

void
svn_txdelta_to_svndiff2(svn_txdelta_window_handler_t *handler,
                        void **handler_baton,
                        svn_stream_t *output,
                        int svndiff_version,
                        apr_pool_t *pool)
{
  svn_txdelta_to_svndiff3(handler, handler_baton, output, svndiff_version,
                          SVN_DELTA_COMPRESSION_LEVEL_DEFAULT, pool);
}

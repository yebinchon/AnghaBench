
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_stream_t ;
typedef int svn_error_t ;
struct TYPE_2__ {scalar_t__ need_reset; int local_stream; int base_stream; } ;
typedef TYPE_1__ open_txdelta_stream_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_stream_reset (int ) ;
 int svn_txdelta2 (int **,int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
open_txdelta_stream(svn_txdelta_stream_t **txdelta_stream_p,
                    void *baton,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  open_txdelta_stream_baton_t *b = baton;

  if (b->need_reset)
    {


      SVN_ERR(svn_stream_reset(b->base_stream));
      SVN_ERR(svn_stream_reset(b->local_stream));
    }

  svn_txdelta2(txdelta_stream_p, b->base_stream, b->local_stream,
               FALSE, result_pool);
  b->need_reset = TRUE;
  return SVN_NO_ERROR;
}

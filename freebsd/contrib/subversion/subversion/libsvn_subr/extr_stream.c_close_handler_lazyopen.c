
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ real_stream; scalar_t__ open_on_close; } ;
typedef TYPE_1__ lazyopen_baton_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int lazyopen_if_unopened (TYPE_1__*) ;
 int svn_stream_close (scalar_t__) ;

__attribute__((used)) static svn_error_t *
close_handler_lazyopen(void *baton)
{
  lazyopen_baton_t *b = baton;

  if (b->open_on_close)
    SVN_ERR(lazyopen_if_unopened(b));
  if (b->real_stream)
    SVN_ERR(svn_stream_close(b->real_stream));

  return SVN_NO_ERROR;
}

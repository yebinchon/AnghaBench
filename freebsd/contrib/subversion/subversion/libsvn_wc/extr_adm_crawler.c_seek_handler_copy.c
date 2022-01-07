
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct copying_stream_baton {int target; int source; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_SEEK_NOT_SUPPORTED ;
 int * SVN_NO_ERROR ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_stream_reset (int ) ;

__attribute__((used)) static svn_error_t *
seek_handler_copy(void *baton, const svn_stream_mark_t *mark)
{
  struct copying_stream_baton *btn = baton;


  if (mark)
    {
      return svn_error_create(SVN_ERR_STREAM_SEEK_NOT_SUPPORTED,
                              ((void*)0), ((void*)0));
    }
  else
    {
      SVN_ERR(svn_stream_reset(btn->source));
      SVN_ERR(svn_stream_reset(btn->target));
    }

  return SVN_NO_ERROR;
}

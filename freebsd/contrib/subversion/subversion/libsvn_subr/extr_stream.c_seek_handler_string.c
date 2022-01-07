
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct string_stream_mark {scalar_t__ pos; } ;
struct string_stream_baton {scalar_t__ amt_read; } ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
seek_handler_string(void *baton, const svn_stream_mark_t *mark)
{
  struct string_stream_baton *btn = baton;

  if (mark != ((void*)0))
    {
      const struct string_stream_mark *marker;

      marker = (const struct string_stream_mark *)mark;
      btn->amt_read = marker->pos;
    }
  else
    btn->amt_read = 0;

  return SVN_NO_ERROR;
}

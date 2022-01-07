
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct special_stream_baton {int pool; int path; TYPE_1__* write_content; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int create_special_file_from_stream (int *,int ,int ) ;
 int * svn_stream_from_stringbuf (TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
close_handler_special(void *baton)
{
  struct special_stream_baton *btn = baton;

  if (btn->write_content->len)
    {


      svn_stream_t *source = svn_stream_from_stringbuf(btn->write_content,
                                                       btn->pool);
      SVN_ERR(create_special_file_from_stream(source, btn->path, btn->pool));
    }

  return SVN_NO_ERROR;
}

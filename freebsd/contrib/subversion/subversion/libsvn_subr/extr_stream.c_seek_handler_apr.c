
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_mark_t ;
typedef int svn_error_t ;
struct mark_apr {int off; } ;
struct baton_apr {int pool; int file; scalar_t__ truncate_on_seek; } ;
typedef int apr_off_t ;


 int APR_SET ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_io_file_seek (int ,int ,int *,int ) ;
 int svn_io_file_trunc (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
seek_handler_apr(void *baton, const svn_stream_mark_t *mark)
{
  struct baton_apr *btn = baton;
  apr_off_t offset = (mark != ((void*)0)) ? ((const struct mark_apr *)mark)->off : 0;

  if (btn->truncate_on_seek)
    {


      SVN_ERR(svn_io_file_trunc(btn->file, offset, btn->pool));
    }
  else
    {
      SVN_ERR(svn_io_file_seek(btn->file, APR_SET, &offset, btn->pool));
    }

  return SVN_NO_ERROR;
}

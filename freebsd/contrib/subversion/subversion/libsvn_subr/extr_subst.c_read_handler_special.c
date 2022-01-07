
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct special_stream_baton {int pool; int path; scalar_t__ read_stream; } ;
typedef int apr_size_t ;


 int APR_ENOENT ;
 int _ (char*) ;
 int svn_dirent_local_style (int ,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_stream_read_full (scalar_t__,char*,int *) ;

__attribute__((used)) static svn_error_t *
read_handler_special(void *baton, char *buffer, apr_size_t *len)
{
  struct special_stream_baton *btn = baton;

  if (btn->read_stream)

    return svn_stream_read_full(btn->read_stream, buffer, len);
  else
    return svn_error_createf(APR_ENOENT, ((void*)0),
                             _("Can't read special file: File '%s' not found"),
                             svn_dirent_local_style(btn->path, btn->pool));
}

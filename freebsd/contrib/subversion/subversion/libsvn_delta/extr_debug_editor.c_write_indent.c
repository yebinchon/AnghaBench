
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct edit_baton {char* prefix; int indent_level; int out; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_stream_puts (int ,char*) ;

__attribute__((used)) static svn_error_t *
write_indent(struct edit_baton *eb, apr_pool_t *pool)
{
  int i;

  SVN_ERR(svn_stream_puts(eb->out, eb->prefix));
  for (i = 0; i < eb->indent_level; ++i)
    SVN_ERR(svn_stream_puts(eb->out, " "));

  return SVN_NO_ERROR;
}

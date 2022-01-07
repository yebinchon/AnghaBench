
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 int LINE_DISPLAY_WIDTH ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

__attribute__((used)) static const char *
get_sep_string(apr_pool_t *result_pool)
{
  int line_width = LINE_DISPLAY_WIDTH;
  int i;
  svn_stringbuf_t *buf;

  buf = svn_stringbuf_create_empty(result_pool);
  for (i = 0; i < line_width; i++)
    svn_stringbuf_appendbyte(buf, '-');
  svn_stringbuf_appendbyte(buf, '+');
  for (i = 0; i < line_width; i++)
    svn_stringbuf_appendbyte(buf, '-');
  svn_stringbuf_appendbyte(buf, '\n');

  return buf->data;
}

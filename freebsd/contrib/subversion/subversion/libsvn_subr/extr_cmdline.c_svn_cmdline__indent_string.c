
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int apr_pool_t ;


 char* next_line (char const**,int *) ;
 int svn_stringbuf_appendcstr (TYPE_1__*,char const*) ;
 TYPE_1__* svn_stringbuf_create_empty (int *) ;

const char *
svn_cmdline__indent_string(const char *str,
                           const char *indent,
                           apr_pool_t *pool)
{
  svn_stringbuf_t *out = svn_stringbuf_create_empty(pool);
  const char *line;

  while ((line = next_line(&str, pool)))
    {
      svn_stringbuf_appendcstr(out, indent);
      svn_stringbuf_appendcstr(out, line);
    }
  return out->data;
}

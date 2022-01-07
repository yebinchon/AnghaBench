
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ strchr (char const*,char const) ;
 size_t strlen (char const*) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char const) ;
 TYPE_1__* svn_stringbuf_create_ensure (size_t,int *) ;

__attribute__((used)) static const char *
auto_unescape_path(const char *path,
                   apr_pool_t *result_pool)
{
  const char esc = '\x1b';
  if (strchr(path, esc))
    {
      apr_size_t len = strlen(path);
      apr_size_t i;

      svn_stringbuf_t *unescaped = svn_stringbuf_create_ensure(len,
                                                               result_pool);
      for (i = 0; i < len; ++i)
        if (path[i] == esc)
          svn_stringbuf_appendbyte(unescaped, path[++i] + 1 - 'A');
        else
          svn_stringbuf_appendbyte(unescaped, path[i]);

      return unescaped->data;
    }

   return path;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_boolean_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strtol (char*,int *,int) ;
 scalar_t__ svn_ctype_isxdigit (char const) ;
 TYPE_1__* svn_stringbuf_create_ensure (scalar_t__,int *) ;

const char *
svn_path_uri_decode(const char *path, apr_pool_t *pool)
{
  svn_stringbuf_t *retstr;
  apr_size_t i;
  svn_boolean_t query_start = FALSE;


  retstr = svn_stringbuf_create_ensure(strlen(path) + 1, pool);

  retstr->len = 0;
  for (i = 0; path[i]; i++)
    {
      char c = path[i];

      if (c == '?')
        {

          query_start = TRUE;
        }
      else if (c == '+' && query_start)
        {


          c = ' ';
        }
      else if (c == '%' && svn_ctype_isxdigit(path[i + 1])
               && svn_ctype_isxdigit(path[i+2]))
        {
          char digitz[3];
          digitz[0] = path[++i];
          digitz[1] = path[++i];
          digitz[2] = '\0';
          c = (char)(strtol(digitz, ((void*)0), 16));
        }

      retstr->data[retstr->len++] = c;
    }


  retstr->data[retstr->len] = 0;

  return retstr->data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int apr_pool_t ;
struct TYPE_2__ {char const* data; } ;


 TYPE_1__* svn_string_ncreate (char const*,int,int *) ;

__attribute__((used)) static const char *
next_line(const char **str, apr_pool_t *pool)
{
  const char *start = *str;
  const char *p = *str;



  while (*p != '\r' && *p != '\n' && *p != '\0')
    p++;

  if (*p == '\r' || *p == '\n')
    {
      char c = *p++;

      if ((c == '\r' && *p == '\n') || (c == '\n' && *p == '\r'))
        p++;
    }


  *str = p;

  if (p == start)
    return ((void*)0);

  return svn_string_ncreate(start, p - start, pool)->data;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* data; int len; int is_atom; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int getsize (char const*,int,char const**,int) ;
 scalar_t__* skel_char_type ;
 scalar_t__ type_space ;

__attribute__((used)) static svn_skel_t *
explicit_atom(const char *data,
              apr_size_t len,
              apr_pool_t *pool)
{
  const char *end = data + len;
  const char *next;
  apr_size_t size;
  svn_skel_t *s;


  size = getsize(data, end - data, &next, end - data);
  data = next;


  if (! data)
    return ((void*)0);


  if (data >= end || skel_char_type[(unsigned char) *data] != type_space)
    return ((void*)0);
  data++;


  if (end - data < size)
    return ((void*)0);


  s = apr_pcalloc(pool, sizeof(*s));
  s->is_atom = TRUE;
  s->data = data;
  s->len = size;

  return s;
}

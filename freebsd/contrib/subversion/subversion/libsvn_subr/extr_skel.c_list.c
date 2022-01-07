
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; int len; struct TYPE_5__* children; int is_atom; struct TYPE_5__* next; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int FALSE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 TYPE_1__* parse (char const*,int,int *) ;
 scalar_t__* skel_char_type ;
 scalar_t__ type_space ;

__attribute__((used)) static svn_skel_t *
list(const char *data,
     apr_size_t len,
     apr_pool_t *pool)
{
  const char *end = data + len;
  const char *list_start;




  if (data >= end || *data != '(')
    return ((void*)0);


  list_start = data;


  data++;


  {
    svn_skel_t *children = ((void*)0);
    svn_skel_t **tail = &children;

    for (;;)
      {
        svn_skel_t *element;


        while (data < end
               && skel_char_type[(unsigned char) *data] == type_space)
          data++;


        if (data >= end)
          return ((void*)0);


        if (*data == ')')
          {
            data++;
            break;
          }


        element = parse(data, end - data, pool);
        if (! element)
          return ((void*)0);


        element->next = ((void*)0);
        *tail = element;
        tail = &element->next;


        data = element->data + element->len;
      }


    {
      svn_skel_t *s = apr_pcalloc(pool, sizeof(*s));

      s->is_atom = FALSE;
      s->data = list_start;
      s->len = data - list_start;
      s->children = children;

      return s;
    }
  }
}

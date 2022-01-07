
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_skel_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int * explicit_atom (char const*,scalar_t__,int *) ;
 int * implicit_atom (char const*,scalar_t__,int *) ;
 int * list (char const*,scalar_t__,int *) ;
 scalar_t__* skel_char_type ;
 scalar_t__ type_name ;

__attribute__((used)) static svn_skel_t *
parse(const char *data,
      apr_size_t len,
      apr_pool_t *pool)
{
  char c;


  if (len <= 0)
    return ((void*)0);

  c = *data;


  if (c == '(')
    return list(data, len, pool);


  if (skel_char_type[(unsigned char) c] == type_name)
    return implicit_atom(data, len, pool);



  else
    return explicit_atom(data, len, pool);
}

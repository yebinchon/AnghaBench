
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int const* ucl_object_lookup_len (int const*,char const*,int) ;

const ucl_object_t *
ucl_comments_find (const ucl_object_t *comments,
  const ucl_object_t *srch)
{
 if (comments && srch) {
  return ucl_object_lookup_len (comments, (const char *)&srch,
    sizeof (void *));
 }

 return ((void*)0);
}

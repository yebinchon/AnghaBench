
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_delete_keyl (int *,char const*,int) ;
 int ucl_object_insert_key (int *,int *,char const*,int,int) ;
 int * ucl_object_lookup_len (int *,char const*,int) ;
 int * ucl_object_ref (int const*) ;

bool
ucl_comments_move (ucl_object_t *comments,
  const ucl_object_t *from, const ucl_object_t *to)
{
 const ucl_object_t *found;
 ucl_object_t *obj;

 if (comments && from && to) {
  found = ucl_object_lookup_len (comments,
    (const char *)&from, sizeof (void *));

  if (found) {

   obj = ucl_object_ref (found);
   ucl_object_delete_keyl (comments, (const char *)&from,
     sizeof (void *));
   ucl_object_insert_key (comments, obj, (const char *)&to,
     sizeof (void *), 1);

   return 1;
  }
 }

 return 0;
}

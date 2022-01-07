
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* vector_free_elem ) (void*) ;


 int free (void*) ;
 void* vector_ref (unsigned int,void*,unsigned int,size_t) ;

__attribute__((used)) static void
vector_free(void *vec, unsigned int *count, size_t esize,
    vector_free_elem free_elem)
{
 unsigned int i;
 void *elem;

 for (i = 0; i < *count; i++) {
  elem = vector_ref(i, vec, *count, esize);
  if (elem != ((void*)0))
   free_elem(elem);
 }
 free(vec);
 *count = 0;
}

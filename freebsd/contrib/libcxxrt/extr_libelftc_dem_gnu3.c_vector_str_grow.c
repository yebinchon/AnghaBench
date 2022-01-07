
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t capacity; size_t size; char** container; } ;


 size_t BUFFER_GROWFACTOR ;
 int assert (int) ;
 int free (char**) ;
 char** malloc (int) ;

__attribute__((used)) static bool
vector_str_grow(struct vector_str *v)
{
 size_t i, tmp_cap;
 char **tmp_ctn;

 if (v == ((void*)0))
  return (0);

 assert(v->capacity > 0);

 tmp_cap = v->capacity * BUFFER_GROWFACTOR;

 assert(tmp_cap > v->capacity);

 if ((tmp_ctn = malloc(sizeof(char *) * tmp_cap)) == ((void*)0))
  return (0);

 for (i = 0; i < v->size; ++i)
  tmp_ctn[i] = v->container[i];

 free(v->container);

 v->container = tmp_ctn;
 v->capacity = tmp_cap;

 return (1);
}

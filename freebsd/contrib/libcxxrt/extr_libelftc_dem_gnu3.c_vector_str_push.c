
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; size_t capacity; int ** container; } ;


 int * malloc (int) ;
 int snprintf (int *,size_t,char*,char const*) ;
 int vector_str_grow (struct vector_str*) ;

__attribute__((used)) static bool
vector_str_push(struct vector_str *v, const char *str, size_t len)
{

 if (v == ((void*)0) || str == ((void*)0))
  return (0);

 if (v->size == v->capacity && vector_str_grow(v) == 0)
  return (0);

 if ((v->container[v->size] = malloc(sizeof(char) * (len + 1))) == ((void*)0))
  return (0);

 snprintf(v->container[v->size], len + 1, "%s", str);

 ++v->size;

 return (1);
}

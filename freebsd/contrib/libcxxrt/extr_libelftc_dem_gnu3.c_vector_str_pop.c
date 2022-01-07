
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; int ** container; } ;


 int free (int *) ;

__attribute__((used)) static bool
vector_str_pop(struct vector_str *v)
{

 if (v == ((void*)0))
  return (0);

 if (v->size == 0)
  return (1);

 --v->size;

 free(v->container[v->size]);
 v->container[v->size] = ((void*)0);

 return (1);
}

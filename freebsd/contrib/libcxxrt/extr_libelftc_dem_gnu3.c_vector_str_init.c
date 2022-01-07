
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {int capacity; int * container; scalar_t__ size; } ;


 int VECTOR_DEF_CAPACITY ;
 int assert (int) ;
 int * malloc (int) ;

__attribute__((used)) static bool
vector_str_init(struct vector_str *v)
{

 if (v == ((void*)0))
  return (0);

 v->size = 0;
 v->capacity = VECTOR_DEF_CAPACITY;

 assert(v->capacity > 0);

 if ((v->container = malloc(sizeof(char *) * v->capacity)) == ((void*)0))
  return (0);

 assert(v->container != ((void*)0));

 return (1);
}

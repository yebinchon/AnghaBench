
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_type_qualifier {int capacity; int * q_container; int ext_name; scalar_t__ size; } ;
typedef enum type_qualifier { ____Placeholder_type_qualifier } type_qualifier ;


 int VECTOR_DEF_CAPACITY ;
 int assert (int ) ;
 int free (int *) ;
 int * malloc (int) ;
 int vector_str_init (int *) ;

__attribute__((used)) static int
vector_type_qualifier_init(struct vector_type_qualifier *v)
{

 if (v == ((void*)0))
  return (0);

 v->size = 0;
 v->capacity = VECTOR_DEF_CAPACITY;

 if ((v->q_container = malloc(sizeof(enum type_qualifier) * v->capacity))
     == ((void*)0))
  return (0);

 assert(v->q_container != ((void*)0));

 if (vector_str_init(&v->ext_name) == 0) {
  free(v->q_container);
  return (0);
 }

 return (1);
}

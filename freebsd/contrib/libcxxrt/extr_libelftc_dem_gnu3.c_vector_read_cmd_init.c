
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_read_cmd {int capacity; int * r_container; scalar_t__ size; } ;
typedef enum read_cmd { ____Placeholder_read_cmd } read_cmd ;


 int VECTOR_DEF_CAPACITY ;
 int * malloc (int) ;

__attribute__((used)) static int
vector_read_cmd_init(struct vector_read_cmd *v)
{

 if (v == ((void*)0))
  return (0);

 v->size = 0;
 v->capacity = VECTOR_DEF_CAPACITY;

 if ((v->r_container = malloc(sizeof(enum read_cmd) * v->capacity))
     == ((void*)0))
  return (0);

 return (1);
}

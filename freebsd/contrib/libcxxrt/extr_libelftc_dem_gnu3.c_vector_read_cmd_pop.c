
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_read_cmd {size_t size; int * r_container; } ;


 int READ_FAIL ;

__attribute__((used)) static int
vector_read_cmd_pop(struct vector_read_cmd *v)
{

 if (v == ((void*)0) || v->size == 0)
  return (0);

 --v->size;
 v->r_container[v->size] = READ_FAIL;

 return (1);
}

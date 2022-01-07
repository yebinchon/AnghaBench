
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_read_cmd {size_t size; int* r_container; } ;
typedef enum read_cmd { ____Placeholder_read_cmd } read_cmd ;


 int READ_FAIL ;

__attribute__((used)) static int
vector_read_cmd_find(struct vector_read_cmd *v, enum read_cmd dst)
{
 size_t i;

 if (v == ((void*)0) || dst == READ_FAIL)
  return (-1);

 for (i = 0; i < v->size; ++i)
  if (v->r_container[i] == dst)
   return (1);

 return (0);
}

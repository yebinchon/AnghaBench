
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_read_cmd {size_t size; size_t capacity; int* r_container; } ;
typedef enum read_cmd { ____Placeholder_read_cmd } read_cmd ;


 size_t BUFFER_GROWFACTOR ;
 int free (int*) ;
 int* malloc (int) ;

__attribute__((used)) static int
vector_read_cmd_push(struct vector_read_cmd *v, enum read_cmd cmd)
{
 enum read_cmd *tmp_r_ctn;
 size_t tmp_cap;
 size_t i;

 if (v == ((void*)0))
  return (0);

 if (v->size == v->capacity) {
  tmp_cap = v->capacity * BUFFER_GROWFACTOR;
  if ((tmp_r_ctn = malloc(sizeof(enum read_cmd) * tmp_cap))
      == ((void*)0))
   return (0);
  for (i = 0; i < v->size; ++i)
   tmp_r_ctn[i] = v->r_container[i];
  free(v->r_container);
  v->r_container = tmp_r_ctn;
  v->capacity = tmp_cap;
 }

 v->r_container[v->size] = cmd;
 ++v->size;

 return (1);
}

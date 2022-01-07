
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_read_cmd {int r_container; } ;


 int free (int ) ;

__attribute__((used)) static void
vector_read_cmd_dest(struct vector_read_cmd *v)
{

 if (v == ((void*)0))
  return;

 free(v->r_container);
}

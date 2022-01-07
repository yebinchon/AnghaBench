
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_type_qualifier {int ext_name; int q_container; } ;


 int free (int ) ;
 int vector_str_dest (int *) ;

__attribute__((used)) static void
vector_type_qualifier_dest(struct vector_type_qualifier *v)
{

 if (v == ((void*)0))
  return;

 free(v->q_container);
 vector_str_dest(&v->ext_name);
}

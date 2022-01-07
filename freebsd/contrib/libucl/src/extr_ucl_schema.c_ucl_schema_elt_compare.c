
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
struct ucl_compare_node {int * obj; } ;


 int ucl_object_compare (int const*,int const*) ;

__attribute__((used)) static int
ucl_schema_elt_compare (struct ucl_compare_node *n1, struct ucl_compare_node *n2)
{
 const ucl_object_t *o1 = n1->obj, *o2 = n2->obj;

 return ucl_object_compare (o1, o2);
}

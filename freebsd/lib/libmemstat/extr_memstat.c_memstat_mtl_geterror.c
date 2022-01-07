
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type_list {int mtl_error; } ;



int
memstat_mtl_geterror(struct memory_type_list *list)
{

 return (list->mtl_error);
}

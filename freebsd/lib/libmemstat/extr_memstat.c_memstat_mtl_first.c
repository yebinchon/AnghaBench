
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type_list {int mtl_list; } ;
struct memory_type {int dummy; } ;


 struct memory_type* LIST_FIRST (int *) ;

struct memory_type *
memstat_mtl_first(struct memory_type_list *list)
{

 return (LIST_FIRST(&list->mtl_list));
}

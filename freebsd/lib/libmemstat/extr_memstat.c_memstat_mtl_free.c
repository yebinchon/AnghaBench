
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type_list {int dummy; } ;


 int _memstat_mtl_empty (struct memory_type_list*) ;
 int free (struct memory_type_list*) ;

void
memstat_mtl_free(struct memory_type_list *list)
{

 _memstat_mtl_empty(list);
 free(list);
}

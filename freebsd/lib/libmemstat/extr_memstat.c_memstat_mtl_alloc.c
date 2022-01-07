
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_type_list {int mtl_error; int mtl_list; } ;


 int LIST_INIT (int *) ;
 int MEMSTAT_ERROR_UNDEFINED ;
 struct memory_type_list* malloc (int) ;

struct memory_type_list *
memstat_mtl_alloc(void)
{
 struct memory_type_list *mtlp;

 mtlp = malloc(sizeof(*mtlp));
 if (mtlp == ((void*)0))
  return (((void*)0));

 LIST_INIT(&mtlp->mtl_list);
 mtlp->mtl_error = MEMSTAT_ERROR_UNDEFINED;
 return (mtlp);
}

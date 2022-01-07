
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_malloc {struct _ck_array* (* malloc ) (int) ;} ;
struct _ck_array {unsigned int length; scalar_t__ n_committed; } ;


 struct _ck_array* stub1 (int) ;

__attribute__((used)) static struct _ck_array *
ck_array_create(struct ck_malloc *allocator, unsigned int length)
{
 struct _ck_array *active;

 active = allocator->malloc(sizeof(struct _ck_array) + sizeof(void *) * length);
 if (active == ((void*)0))
  return ((void*)0);

 active->n_committed = 0;
 active->length = length;

 return active;
}

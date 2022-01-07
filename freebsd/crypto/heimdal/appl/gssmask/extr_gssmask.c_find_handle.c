
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle {scalar_t__ idx; int type; void* ptr; struct handle* next; } ;
typedef scalar_t__ int32_t ;
typedef enum handle_type { ____Placeholder_handle_type } handle_type ;


 int errx (int,char*) ;

__attribute__((used)) static void *
find_handle(struct handle *h, int32_t idx, enum handle_type type)
{
    if (idx == 0)
 return ((void*)0);

    while (h) {
 if (h->idx == idx) {
     if (type == h->type)
  return h->ptr;
     errx(1, "monger switched type on handle!");
 }
 h = h->next;
    }
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle {int type; scalar_t__ idx; struct handle* next; void* ptr; } ;
struct client {struct handle* handles; scalar_t__ nHandle; } ;
typedef scalar_t__ int32_t ;
typedef enum handle_type { ____Placeholder_handle_type } handle_type ;


 struct handle* ecalloc (int,int) ;

__attribute__((used)) static int32_t
add_handle(struct client *c, enum handle_type type, void *data)
{
    struct handle *h;

    h = ecalloc(1, sizeof(*h));

    h->idx = ++c->nHandle;
    h->type = type;
    h->ptr = data;
    h->next = c->handles;
    c->handles = h;

    return h->idx;
}

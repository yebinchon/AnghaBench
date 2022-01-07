
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ch; struct TYPE_6__* sibling; struct TYPE_6__* next; } ;
typedef TYPE_1__ XmapNode ;
struct TYPE_7__ {scalar_t__* buf; scalar_t__ len; } ;
typedef TYPE_2__ CStr ;


 int PutFreeNode (TYPE_1__*) ;

__attribute__((used)) static int
TryDeleteNode(XmapNode **inptr, CStr *str)
{
    XmapNode *ptr;

    ptr = *inptr;



    if (ptr->ch != *(str->buf)) {
 XmapNode *xm;

 for (xm = ptr; xm->sibling != ((void*)0); xm = xm->sibling)
     if (xm->sibling->ch == *(str->buf))
  break;
 if (xm->sibling == ((void*)0))
     return (0);
 inptr = &xm->sibling;
 ptr = xm->sibling;
    }

    str->buf++;
    str->len--;

    if (str->len == 0) {

 *inptr = ptr->sibling;
 ptr->sibling = ((void*)0);
 PutFreeNode(ptr);
 return (1);
    }
    else if (ptr->next != ((void*)0) && TryDeleteNode(&ptr->next, str) == 1) {
 if (ptr->next != ((void*)0))
     return (0);
 *inptr = ptr->sibling;
 ptr->sibling = ((void*)0);
 PutFreeNode(ptr);
 return (1);
    }
    else {
 return (0);
    }
}

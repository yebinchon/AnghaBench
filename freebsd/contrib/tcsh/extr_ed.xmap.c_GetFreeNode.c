
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int * buf; } ;
struct TYPE_8__ {TYPE_2__ str; } ;
struct TYPE_10__ {int * sibling; int * next; TYPE_1__ val; int type; int ch; } ;
typedef TYPE_3__ XmapNode ;
struct TYPE_11__ {int * buf; } ;
typedef TYPE_4__ CStr ;


 int XK_NOD ;
 TYPE_3__* xmalloc (int) ;

__attribute__((used)) static XmapNode *
GetFreeNode(CStr *ch)
{
    XmapNode *ptr;

    ptr = xmalloc(sizeof(XmapNode));
    ptr->ch = ch->buf[0];
    ptr->type = XK_NOD;
    ptr->val.str.buf = ((void*)0);
    ptr->val.str.len = 0;
    ptr->next = ((void*)0);
    ptr->sibling = ((void*)0);
    return (ptr);
}

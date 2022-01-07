
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* buf; } ;
struct TYPE_7__ {TYPE_1__ str; } ;
struct TYPE_8__ {int type; TYPE_2__ val; struct TYPE_8__* sibling; struct TYPE_8__* next; } ;
typedef TYPE_3__ XmapNode ;






 int abort () ;
 int xfree (TYPE_3__*) ;

__attribute__((used)) static void
PutFreeNode(XmapNode *ptr)
{
    if (ptr == ((void*)0))
 return;

    if (ptr->next != ((void*)0)) {
 PutFreeNode(ptr->next);
 ptr->next = ((void*)0);
    }

    PutFreeNode(ptr->sibling);

    switch (ptr->type) {
    case 131:
    case 129:
 break;
    case 130:
    case 128:
 xfree(ptr->val.str.buf);
 break;
    default:
 abort();
 break;
    }
    xfree(ptr);
}

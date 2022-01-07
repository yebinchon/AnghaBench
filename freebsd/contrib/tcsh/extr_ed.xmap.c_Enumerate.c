
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Strbuf {size_t len; int s; } ;
struct TYPE_3__ {struct TYPE_3__* sibling; struct TYPE_3__* next; int type; int val; int ch; } ;
typedef TYPE_1__ XmapNode ;


 int CGETS (int,int,char*) ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int printOne (int ,int *,int ) ;
 int unparsech (struct Strbuf*,int ) ;
 int xprintf (int ) ;

__attribute__((used)) static void
Enumerate(struct Strbuf *buf, const XmapNode *ptr)
{
    size_t old_len;

    if (ptr == ((void*)0)) {



 return;
    }

    old_len = buf->len;
    unparsech(buf, ptr->ch);
    if (ptr->next == ((void*)0)) {

 Strbuf_append1(buf, '"');
 Strbuf_terminate(buf);
 printOne(buf->s, &ptr->val, ptr->type);
    }
    else
 Enumerate(buf, ptr->next);


    if (ptr->sibling) {
 buf->len = old_len;
 Enumerate(buf, ptr->sibling);
    }
}

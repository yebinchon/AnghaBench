
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; int * buf; } ;
struct TYPE_9__ {TYPE_1__ str; int cmd; } ;
typedef TYPE_2__ XmapVal ;
struct TYPE_10__ {char ch; int type; struct TYPE_10__* sibling; TYPE_2__ val; struct TYPE_10__* next; } ;
typedef TYPE_3__ XmapNode ;
struct TYPE_11__ {char* buf; } ;
typedef char Char ;
typedef TYPE_4__ CStr ;


 int F_SEND_EOF ;
 int GetNextChar (char*) ;
 int XK_CMD ;
 int XK_STR ;

__attribute__((used)) static int
TraverseMap(XmapNode *ptr, CStr *ch, XmapVal *val)
{
    Char tch;

    if (ptr->ch == *(ch->buf)) {

 if (ptr->next) {

     if (GetNextChar(&tch) != 1) {
  val->cmd = F_SEND_EOF;
  return XK_CMD;
     }
     *(ch->buf) = tch;
     return (TraverseMap(ptr->next, ch, val));
 }
 else {
     *val = ptr->val;
     if (ptr->type != XK_CMD)
  *(ch->buf) = '\0';
     return ptr->type;
 }
    }
    else {

 if (ptr->sibling) {

     return (TraverseMap(ptr->sibling, ch, val));
 }
 else {

     val->str.buf = ((void*)0);
     val->str.len = 0;
     return XK_STR;
 }
    }
}

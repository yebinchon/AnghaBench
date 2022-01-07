
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct Strbuf {int s; } ;
struct TYPE_6__ {scalar_t__ ch; struct TYPE_6__* sibling; int type; int val; struct TYPE_6__* next; } ;
typedef TYPE_1__ XmapNode ;
struct TYPE_7__ {int len; scalar_t__* buf; } ;
typedef TYPE_2__ CStr ;


 int Enumerate (struct Strbuf*,TYPE_1__ const*) ;
 int Strbuf_append1 (struct Strbuf*,char) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int printOne (int ,int *,int ) ;
 int unparsech (struct Strbuf*,scalar_t__) ;

__attribute__((used)) static int
Lookup(struct Strbuf *buf, const CStr *str, const XmapNode *ptr)
{
    if (ptr == ((void*)0))
 return (-1);

    if (str->len == 0) {

 Enumerate(buf, ptr);
 return (0);
    }
    else {

 if (ptr->ch == *(str->buf)) {

     unparsech(buf, ptr->ch);
     if (ptr->next != ((void*)0)) {

  CStr tstr;
  tstr.buf = str->buf + 1;
  tstr.len = str->len - 1;
  return (Lookup(buf, &tstr, ptr->next));
     }
     else {

  if (str->len == 1) {
      Strbuf_append1(buf, '"');
      Strbuf_terminate(buf);
      printOne(buf->s, &ptr->val, ptr->type);
      return (0);
  }
  else
      return (-1);
     }
 }
 else {

     if (ptr->sibling)
  return (Lookup(buf, str, ptr->sibling));
     else
  return (-1);
 }
    }
}

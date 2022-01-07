
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {scalar_t__ v_name; struct varent* v_parent; struct varent* v_right; struct varent* v_left; } ;
typedef int Strbuf ;


 int Strbuf_append (int*,scalar_t__) ;
 int USE (int*) ;
 struct varent* tw_vptr ;

int
tw_shvar_next(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    struct varent *p;
    struct varent *c;

    USE(flags);
    USE(dir);
    if ((p = tw_vptr) == ((void*)0))
 return 0;

    Strbuf_append(res, p->v_name);


    for (;;) {
 if (p->v_right) {
     p = p->v_right;
     while (p->v_left)
  p = p->v_left;
 }
 else {
     do {
  c = p;
  p = p->v_parent;
     } while (p->v_right == c);
 }
 if (p->v_parent == 0) {
     tw_vptr = ((void*)0);
     return 1;
 }
 if (p->v_name) {
     tw_vptr = p;
     return 1;
 }
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {struct varent* v_parent; struct varent* v_right; scalar_t__ v_name; struct varent* v_left; } ;


 struct varent* tw_vptr ;

__attribute__((used)) static void
tw_vptr_start(struct varent *c)
{
    tw_vptr = c;

    for (;;) {
 while (tw_vptr->v_left)
     tw_vptr = tw_vptr->v_left;
x:
 if (tw_vptr->v_parent == 0) {
     tw_vptr = ((void*)0);
     return;
 }
 if (tw_vptr->v_name)
     return;
 if (tw_vptr->v_right) {
     tw_vptr = tw_vptr->v_right;
     continue;
 }
 do {
     c = tw_vptr;
     tw_vptr = tw_vptr->v_parent;
 } while (tw_vptr->v_right == c);
 goto x;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {struct varent* v_parent; struct varent* v_right; scalar_t__ v_name; struct varent* v_left; } ;


 struct varent aliases ;
 int tw_cmd_add (scalar_t__) ;

__attribute__((used)) static void
tw_cmd_alias(void)
{
    struct varent *p;
    struct varent *c;

    p = &aliases;
    for (;;) {
 while (p->v_left)
     p = p->v_left;
x:
 if (p->v_parent == 0)
     return;
 if (p->v_name)
     tw_cmd_add(p->v_name);
 if (p->v_right) {
     p = p->v_right;
     continue;
 }
 do {
     c = p;
     p = p->v_parent;
 } while (p->v_right == c);
 goto x;
    }
}

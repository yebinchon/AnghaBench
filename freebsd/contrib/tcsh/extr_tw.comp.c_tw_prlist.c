
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {struct varent* v_parent; struct varent* v_right; scalar_t__ vec; int v_name; struct varent* v_left; } ;


 int cleanup_until (int*) ;
 int pintr_push_enable (int*) ;
 scalar_t__ setintr ;
 int short2str (int ) ;
 int tw_pr (scalar_t__) ;
 int xprintf (char*,int ) ;
 int xputchar (char) ;

__attribute__((used)) static void
tw_prlist(struct varent *p)
{
    struct varent *c;

    for (;;) {
 while (p->v_left)
     p = p->v_left;
x:
 if (p->v_parent == 0)
     break;
 if (setintr) {
     int old_pintr_disabled;

     pintr_push_enable(&old_pintr_disabled);
     cleanup_until(&old_pintr_disabled);
 }
 xprintf("%s\t", short2str(p->v_name));
 if (p->vec)
     tw_pr(p->vec);
 xputchar('\n');
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

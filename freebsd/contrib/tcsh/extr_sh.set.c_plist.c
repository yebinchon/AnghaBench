
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int v_flags; struct varent* v_parent; struct varent* v_right; int vec; int v_name; struct varent* v_left; } ;


 int blklen (int ) ;
 int blkpr (int ) ;
 int cleanup_until (int*) ;
 int pintr_push_enable (int*) ;
 scalar_t__ setintr ;
 int xprintf (char*,int ) ;
 int xputchar (char) ;

void
plist(struct varent *p, int what)
{
    struct varent *c;
    int len;

    for (;;) {
 while (p->v_left)
     p = p->v_left;
x:
 if (p->v_parent == 0)
     break;
 if ((p->v_flags & what) != 0) {
     if (setintr) {
  int old_pintr_disabled;

  pintr_push_enable(&old_pintr_disabled);
  cleanup_until(&old_pintr_disabled);
     }
     len = blklen(p->vec);
     xprintf("%S\t", p->v_name);
     if (len != 1)
  xputchar('(');
     blkpr(p->vec);
     if (len != 1)
  xputchar(')');
     xputchar('\n');
 }
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

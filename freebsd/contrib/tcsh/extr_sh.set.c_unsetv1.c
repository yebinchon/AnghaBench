
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {struct varent* v_parent; struct varent** v_link; struct varent* v_right; struct varent* v_left; int vec; int v_flags; struct varent* v_name; } ;


 int balance (struct varent*,int,int) ;
 int blkfree (int ) ;
 int xfree (struct varent*) ;

__attribute__((used)) static void
unsetv1(struct varent *p)
{
    struct varent *c, *pp;
    int f;




    blkfree(p->vec);
    xfree(p->v_name);





    if (p->v_right == 0)
 c = p->v_left;
    else if (p->v_left == 0)
 c = p->v_right;
    else {
 for (c = p->v_left; c->v_right; c = c->v_right)
     continue;
 p->v_name = c->v_name;
 p->v_flags = c->v_flags;
 p->vec = c->vec;
 p = c;
 c = p->v_left;
    }




    pp = p->v_parent;
    f = pp->v_right == p;
    if ((pp->v_link[f] = c) != 0)
 c->v_parent = pp;



    xfree(p);
    balance(pp, f, 1);
}

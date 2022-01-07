
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct varent {int v_bal; struct varent* v_right; struct varent* v_left; void** v_link; struct varent* v_parent; } ;


 void* rleft (struct varent*) ;
 void* rright (struct varent*) ;

__attribute__((used)) static void
balance(struct varent *p, int f, int d)
{
    struct varent *pp;


    struct varent *t;

    int ff;
    for (; (pp = p->v_parent) != 0; p = pp, f = ff) {
 ff = pp->v_right == p;
 if (f ^ d) {
     switch (p->v_bal) {
     case -1:
  p->v_bal = 0;
  break;
     case 0:
  p->v_bal = 1;
  break;
     case 1:
  switch (p->v_right->v_bal) {
  case 1:
      pp->v_link[ff] = rleft(p);
      p->v_left->v_bal = 0;
      p->v_bal = 0;
      break;
  case 0:
      pp->v_link[ff] = rleft(p);
      p->v_left->v_bal = 1;
      p->v_bal = -1;
      break;
  case -1:
      (void) rright(p->v_right);
      pp->v_link[ff] = rleft(p);
      p->v_left->v_bal =
   p->v_bal < 1 ? 0 : -1;
      p->v_right->v_bal =
   p->v_bal > -1 ? 0 : 1;
      p->v_bal = 0;
      break;
  default:
      break;
  }
  break;
     default:
  break;
     }
 }
 else {
     switch (p->v_bal) {
     case 1:
  p->v_bal = 0;
  break;
     case 0:
  p->v_bal = -1;
  break;
     case -1:
  switch (p->v_left->v_bal) {
  case -1:
      pp->v_link[ff] = rright(p);
      p->v_right->v_bal = 0;
      p->v_bal = 0;
      break;
  case 0:
      pp->v_link[ff] = rright(p);
      p->v_right->v_bal = -1;
      p->v_bal = 1;
      break;
  case 1:
      (void) rleft(p->v_left);
      pp->v_link[ff] = rright(p);
      p->v_left->v_bal =
   p->v_bal < 1 ? 0 : -1;
      p->v_right->v_bal =
   p->v_bal > -1 ? 0 : 1;
      p->v_bal = 0;
      break;
  default:
      break;
  }
  break;
     default:
  break;
     }
 }




 if ((p->v_bal == 0) ^ d)
     break;
    }
}

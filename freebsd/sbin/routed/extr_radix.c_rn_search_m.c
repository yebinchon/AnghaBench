
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radix_node {scalar_t__ rn_b; int rn_bmask; size_t rn_off; struct radix_node* rn_l; struct radix_node* rn_r; } ;
typedef int* caddr_t ;



__attribute__((used)) static struct radix_node *
rn_search_m(void *v_arg,
     struct radix_node *head,
     void *m_arg)
{
 struct radix_node *x;
 caddr_t v = v_arg, m = m_arg;

 for (x = head; x->rn_b >= 0;) {
  if ((x->rn_bmask & m[x->rn_off]) &&
      (x->rn_bmask & v[x->rn_off]))
   x = x->rn_r;
  else
   x = x->rn_l;
 }
 return x;
}

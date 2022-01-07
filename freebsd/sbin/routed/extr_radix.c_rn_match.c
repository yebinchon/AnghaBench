
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct radix_node_head {struct radix_node* rnh_treetop; } ;
struct radix_node {int rn_off; int rn_b; int rn_bmask; scalar_t__ rn_mask; int* rn_key; int rn_flags; struct radix_node* rn_dupedkey; struct radix_mask* rn_mklist; struct radix_node* rn_p; struct radix_node* rn_l; struct radix_node* rn_r; } ;
struct radix_mask {int rm_flags; int rm_b; scalar_t__ rm_mask; struct radix_node* rm_leaf; struct radix_mask* rm_mklist; } ;
typedef int* caddr_t ;


 int RNF_NORMAL ;
 int RNF_ROOT ;
 int min (size_t,int) ;
 scalar_t__ rn_satisfies_leaf (int*,struct radix_node*,int) ;
 struct radix_node* rn_search_m (int*,struct radix_node*,scalar_t__) ;

__attribute__((used)) static struct radix_node *
rn_match(void *v_arg,
  struct radix_node_head *head)
{
 caddr_t v = v_arg;
 struct radix_node *t = head->rnh_treetop, *x;
 caddr_t cp = v, cp2;
 caddr_t cplim;
 struct radix_node *saved_t, *top = t;
 int off = t->rn_off, vlen = *(u_char *)cp, matched_off;
 int test, b, rn_b;





 for (; t->rn_b >= 0; ) {
  if (t->rn_bmask & cp[t->rn_off])
   t = t->rn_r;
  else
   t = t->rn_l;
 }
 if (t->rn_mask)
  vlen = *(u_char *)t->rn_mask;
 cp += off; cp2 = t->rn_key + off; cplim = v + vlen;
 for (; cp < cplim; cp++, cp2++)
  if (*cp != *cp2)
   goto on1;
 if (!(t->rn_flags & RNF_ROOT))
  return t;
 if (t->rn_dupedkey) {
  t = t->rn_dupedkey;
  return t;
 }
 if (*(cp-1) == 0)
  return t;
 b = 0;
 goto on2;
on1:
 test = (*cp ^ *cp2) & 0xff;
 for (b = 7; (test >>= 1) > 0;)
  b--;
on2:
 matched_off = cp - v;
 b += matched_off << 3;
 rn_b = -1 - b;



 if ((saved_t = t)->rn_mask == 0)
  t = t->rn_dupedkey;
 for (; t; t = t->rn_dupedkey) {





  if (t->rn_flags & RNF_NORMAL) {
   if (rn_b <= t->rn_b)
    return t;
  } else if (rn_satisfies_leaf(v, t, matched_off)) {
   return t;
  }
 }
 t = saved_t;

 do {
  struct radix_mask *m;
  t = t->rn_p;
  if ((m = t->rn_mklist)) {






   do {
    if (m->rm_flags & RNF_NORMAL) {
     if (rn_b <= m->rm_b)
      return (m->rm_leaf);
    } else {
     off = min(t->rn_off, matched_off);
     x = rn_search_m(v, t, m->rm_mask);
     while (x && x->rn_mask != m->rm_mask)
      x = x->rn_dupedkey;
     if (x && rn_satisfies_leaf(v, x, off))
          return x;
    }
   } while ((m = m->rm_mklist));
  }
 } while (t != top);
 return 0;
}

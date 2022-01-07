
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;
typedef int cset ;


 int CHadd (int *,char) ;
 char p_b_coll_elem (struct parse*,char) ;

__attribute__((used)) static void
p_b_eclass(struct parse *p, cset *cs)
{
 char c;

 c = p_b_coll_elem(p, '=');
 CHadd(cs, c);
}

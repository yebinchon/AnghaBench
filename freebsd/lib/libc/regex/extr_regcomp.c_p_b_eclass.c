
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct parse {int dummy; } ;
typedef int cset ;


 int CHadd (struct parse*,int *,int ) ;
 int p_b_coll_elem (struct parse*,char) ;

__attribute__((used)) static void
p_b_eclass(struct parse *p, cset *cs)
{
 wint_t c;

 c = p_b_coll_elem(p, '=');
 CHadd(p, cs, c);
}

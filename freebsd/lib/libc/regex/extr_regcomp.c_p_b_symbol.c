
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct parse {int dummy; } ;


 int EATTWO (char,char) ;
 int MORE () ;
 int REG_EBRACK ;
 int REG_ECOLLATE ;
 int REQUIRE (int ,int ) ;
 int WGETNEXT () ;
 int p_b_coll_elem (struct parse*,char) ;

__attribute__((used)) static wint_t
p_b_symbol(struct parse *p)
{
 wint_t value;

 (void)REQUIRE(MORE(), REG_EBRACK);
 if (!EATTWO('[', '.'))
  return(WGETNEXT());


 value = p_b_coll_elem(p, '.');
 (void)REQUIRE(EATTWO('.', ']'), REG_ECOLLATE);
 return(value);
}

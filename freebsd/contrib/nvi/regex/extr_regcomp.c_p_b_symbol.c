
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;


 int EATTWO (char,char) ;
 char GETNEXT () ;
 int MORE () ;
 int REG_EBRACK ;
 int REG_ECOLLATE ;
 int REQUIRE (int ,int ) ;
 char p_b_coll_elem (struct parse*,char) ;

__attribute__((used)) static char
p_b_symbol(struct parse *p)
{
 char value;

 (void)REQUIRE(MORE(), REG_EBRACK);
 if (!EATTWO('[', '.'))
  return(GETNEXT());


 value = p_b_coll_elem(p, '.');
 (void)REQUIRE(EATTWO('.', ']'), REG_ECOLLATE);
 return(value);
}

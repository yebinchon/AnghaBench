
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uch ;
struct parse {int dummy; } ;


 int DUPMAX ;
 int GETNEXT () ;
 scalar_t__ MORE () ;
 scalar_t__ PEEK () ;
 int REG_BADBR ;
 int REQUIRE (int,int ) ;
 scalar_t__ isdigit (int ) ;

__attribute__((used)) static int
p_count(struct parse *p)
{
 int count = 0;
 int ndigits = 0;

 while (MORE() && isdigit((uch)PEEK()) && count <= DUPMAX) {
  count = count*10 + (GETNEXT() - '0');
  ndigits++;
 }

 (void)REQUIRE(ndigits > 0 && count <= DUPMAX, REG_BADBR);
 return(count);
}

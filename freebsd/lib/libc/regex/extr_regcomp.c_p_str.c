
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {int dummy; } ;


 scalar_t__ MORE () ;
 int REG_EMPTY ;
 int REQUIRE (scalar_t__,int ) ;
 int WGETNEXT () ;
 int ordinary (struct parse*,int ) ;

__attribute__((used)) static void
p_str(struct parse *p)
{
 (void)REQUIRE(MORE(), REG_EMPTY);
 while (MORE())
  ordinary(p, WGETNEXT());
}

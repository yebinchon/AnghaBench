
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pll_sc {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int PLL_LOCK_TIMEOUT ;
 scalar_t__ is_locked (struct pll_sc*) ;
 int printf (char*) ;

__attribute__((used)) static int
wait_for_lock(struct pll_sc *sc)
{
 int i;

 for (i = PLL_LOCK_TIMEOUT / 10; i > 0; i--) {
  if (is_locked(sc))
   break;
  DELAY(10);
 }
 if (i <= 0) {
  printf("PLL lock timeout\n");
  return (ETIMEDOUT);
 }
 return (0);
}

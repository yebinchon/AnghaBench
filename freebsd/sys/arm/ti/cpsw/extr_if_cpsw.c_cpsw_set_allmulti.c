
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpswp_softc {int dummy; } ;


 int printf (char*) ;

__attribute__((used)) static void
cpsw_set_allmulti(struct cpswp_softc *sc, int set)
{
 if (set) {
  printf("All-multicast mode unimplemented\n");
 }
}

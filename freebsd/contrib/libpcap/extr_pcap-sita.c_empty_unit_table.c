
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ip; } ;


 int MAX_CHASSIS ;
 int MAX_GEOSLOT ;
 int empty_unit (int,int) ;
 int free (int *) ;
 TYPE_1__** units ;

__attribute__((used)) static void empty_unit_table(void) {
 int chassis, geoslot;

 for (chassis = 0; chassis <= MAX_CHASSIS; chassis++) {
  for (geoslot = 0; geoslot <= MAX_GEOSLOT; geoslot++) {
   if (units[chassis][geoslot].ip != ((void*)0)) {
    free(units[chassis][geoslot].ip);
    units[chassis][geoslot].ip = 0;
   }
   empty_unit(chassis, geoslot);
  }
 }
}

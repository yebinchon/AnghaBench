
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fd; int find_fd; } ;
typedef TYPE_1__ unit_t ;


 int MAX_CHASSIS ;
 int MAX_GEOSLOT ;
 TYPE_1__** units ;

__attribute__((used)) static int find_unit_by_fd(int fd, int *chassis, int *geoslot, unit_t **unit_ptr) {
 int c, s;

 for (c = 0; c <= MAX_CHASSIS; c++) {
  for (s = 0; s <= MAX_GEOSLOT; s++) {
   if (units[c][s].fd == fd || units[c][s].find_fd == fd) {
    if (chassis) *chassis = c;
    if (geoslot) *geoslot = s;
    if (unit_ptr) *unit_ptr = &units[c][s];
    return 1;
   }
  }
 }
 return 0;
}

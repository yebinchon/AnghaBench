
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int find_fd; } ;


 int LIVE ;
 int close (int) ;
 TYPE_1__** units ;

__attribute__((used)) static void close_with_IOP(int chassis, int geoslot, int flag) {
 int *id;

 if (flag == LIVE) id = &units[chassis][geoslot].fd;
 else id = &units[chassis][geoslot].find_fd;

 if (*id) {
  close(*id);
  *id = 0;
 }
}

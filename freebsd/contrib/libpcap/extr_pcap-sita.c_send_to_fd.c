
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; int find_fd; } ;


 int FIND ;
 int LIVE ;
 int close_with_IOP (int,int,int ) ;
 int empty_unit (int,int) ;
 int find_unit_by_fd (int,int*,int*,int *) ;
 TYPE_1__** units ;
 int write (int,unsigned char*,int) ;

__attribute__((used)) static void send_to_fd(int fd, int len, unsigned char *str) {
 int nwritten;
 int chassis, geoslot;

 while (len > 0) {
  if ((nwritten = write(fd, str, len)) <= 0) {
   find_unit_by_fd(fd, &chassis, &geoslot, ((void*)0));
   if (units[chassis][geoslot].fd == fd) close_with_IOP(chassis, geoslot, LIVE);
   else if (units[chassis][geoslot].find_fd == fd) close_with_IOP(chassis, geoslot, FIND);
   empty_unit(chassis, geoslot);
   return;
  }
  len -= nwritten;
  str += nwritten;
 }
}

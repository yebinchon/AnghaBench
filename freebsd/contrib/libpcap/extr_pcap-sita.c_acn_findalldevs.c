
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ find_fd; scalar_t__ len; scalar_t__ ip; } ;
typedef TYPE_1__ unit_t ;


 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int FIND ;
 int MAX_CHASSIS ;
 int MAX_GEOSLOT ;
 int close_with_IOP (int,int,int ) ;
 scalar_t__ get_error_response (scalar_t__,char*) ;
 scalar_t__ max_fs ;
 scalar_t__ open_with_IOP (TYPE_1__*,int ) ;
 scalar_t__ process_client_data (char*) ;
 int readfds ;
 int send_to_fd (scalar_t__,int,unsigned char*) ;
 int sort_if_table () ;
 TYPE_1__** units ;
 int wait_for_all_answers () ;

int acn_findalldevs(char *errbuf) {
 int chassis, geoslot;
 unit_t *u;

 FD_ZERO(&readfds);
 max_fs = 0;
 for (chassis = 0; chassis <= MAX_CHASSIS; chassis++) {
  for (geoslot = 0; geoslot <= MAX_GEOSLOT; geoslot++) {
   u = &units[chassis][geoslot];
   if (u->ip && (open_with_IOP(u, FIND))) {
    send_to_fd(u->find_fd, 1, (unsigned char *)"\0");
    if (get_error_response(u->find_fd, errbuf))
     close_with_IOP(chassis, geoslot, FIND);
    else {
     if (u->find_fd > max_fs)
      max_fs = u->find_fd;
     FD_SET(u->find_fd, &readfds);
     u->len = 0;
     send_to_fd(u->find_fd, 1, (unsigned char *)"Q");
    }
   }
  }
 }
 wait_for_all_answers();
 if (process_client_data(errbuf))
  return -1;
 sort_if_table();
 return 0;
}

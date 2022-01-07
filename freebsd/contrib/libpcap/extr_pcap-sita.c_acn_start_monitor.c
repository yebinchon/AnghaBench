
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_time; } ;
typedef TYPE_1__ unit_t ;
typedef int uint32_t ;


 int find_unit_by_fd (int,int *,int *,TYPE_1__**) ;
 int htonl (int) ;
 int send_to_fd (int,int,unsigned char*) ;

__attribute__((used)) static void acn_start_monitor(int fd, int snaplen, int timeout, int promiscuous, int direction) {
 unsigned char buf[8];
 unit_t *u;


 find_unit_by_fd(fd, ((void*)0), ((void*)0), &u);
 if (u->first_time == 0) {
  buf[0] = 'M';
  *(uint32_t *)&buf[1] = htonl(snaplen);
  buf[5] = timeout;
  buf[6] = promiscuous;
  buf[7] = direction;

  send_to_fd(fd, 8, buf);
  u->first_time = 1;
 }

}

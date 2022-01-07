
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ first_time; } ;
typedef TYPE_1__ unit_t ;
struct TYPE_7__ {int fd; } ;
typedef TYPE_2__ pcap_t ;


 int LIVE ;
 int close_with_IOP (int,int,int ) ;
 scalar_t__ find_unit_by_fd (int ,int*,int*,TYPE_1__**) ;
 int pcap_cleanup_live_common (TYPE_2__*) ;

__attribute__((used)) static void pcap_cleanup_acn(pcap_t *handle) {
 int chassis, geoslot;
 unit_t *u;

 if (find_unit_by_fd(handle->fd, &chassis, &geoslot, &u) == 0)
  return;
 close_with_IOP(chassis, geoslot, LIVE);
 if (u)
  u->first_time = 0;
 pcap_cleanup_live_common(handle);
}

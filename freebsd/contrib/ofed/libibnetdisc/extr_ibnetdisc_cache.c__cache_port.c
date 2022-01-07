
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int lmc; TYPE_2__* remoteport; TYPE_1__* node; int info; int base_lid; scalar_t__ ext_portnum; scalar_t__ portnum; int guid; } ;
typedef TYPE_3__ ibnd_port_t ;
struct TYPE_6__ {scalar_t__ portnum; int guid; } ;
struct TYPE_5__ {int guid; } ;


 int IBND_FABRIC_CACHE_BUFLEN ;
 int IB_SMP_DATA_SIZE ;
 scalar_t__ _marshall16 (int*,int ) ;
 scalar_t__ _marshall64 (int*,int ) ;
 scalar_t__ _marshall8 (int*,int) ;
 scalar_t__ _marshall_buf (int*,int ,int ) ;
 scalar_t__ ibnd_write (int,int*,size_t) ;

__attribute__((used)) static int _cache_port(int fd, ibnd_port_t * port)
{
 uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
 size_t offset = 0;

 offset += _marshall64(buf + offset, port->guid);
 offset += _marshall8(buf + offset, (uint8_t) port->portnum);
 offset += _marshall8(buf + offset, (uint8_t) port->ext_portnum);
 offset += _marshall16(buf + offset, port->base_lid);
 offset += _marshall8(buf + offset, port->lmc);
 offset += _marshall_buf(buf + offset, port->info, IB_SMP_DATA_SIZE);
 offset += _marshall64(buf + offset, port->node->guid);
 if (port->remoteport) {
  offset += _marshall8(buf + offset, 1);
  offset += _marshall64(buf + offset, port->remoteport->guid);
  offset += _marshall8(buf + offset, (uint8_t) port->remoteport->portnum);
 } else {
  offset += _marshall8(buf + offset, 0);
  offset += _marshall64(buf + offset, 0);
  offset += _marshall8(buf + offset, 0);
 }

 if (ibnd_write(fd, buf, offset) < 0)
  return -1;

 return 0;
}

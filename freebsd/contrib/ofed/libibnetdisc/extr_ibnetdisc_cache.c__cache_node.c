
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int numports; TYPE_1__** ports; int nodedesc; int info; scalar_t__ type; int guid; int switchinfo; scalar_t__ smaenhsp0; scalar_t__ smalmc; int smalid; } ;
typedef TYPE_2__ ibnd_node_t ;
struct TYPE_4__ {scalar_t__ portnum; int guid; } ;


 int IBND_FABRIC_CACHE_BUFLEN ;
 int IB_SMP_DATA_SIZE ;
 scalar_t__ _marshall16 (scalar_t__*,int ) ;
 scalar_t__ _marshall64 (scalar_t__*,int ) ;
 scalar_t__ _marshall8 (scalar_t__*,scalar_t__) ;
 scalar_t__ _marshall_buf (scalar_t__*,int ,int ) ;
 scalar_t__ ibnd_write (int,scalar_t__*,size_t) ;

__attribute__((used)) static int _cache_node(int fd, ibnd_node_t * node)
{
 uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
 size_t offset = 0;
 size_t ports_stored_offset = 0;
 uint8_t ports_stored_count = 0;
 int i;

 offset += _marshall16(buf + offset, node->smalid);
 offset += _marshall8(buf + offset, node->smalmc);
 offset += _marshall8(buf + offset, (uint8_t) node->smaenhsp0);
 offset += _marshall_buf(buf + offset, node->switchinfo,
    IB_SMP_DATA_SIZE);
 offset += _marshall64(buf + offset, node->guid);
 offset += _marshall8(buf + offset, (uint8_t) node->type);
 offset += _marshall8(buf + offset, (uint8_t) node->numports);
 offset += _marshall_buf(buf + offset, node->info, IB_SMP_DATA_SIZE);
 offset += _marshall_buf(buf + offset, node->nodedesc, IB_SMP_DATA_SIZE);




 ports_stored_offset = offset;
 offset += sizeof(uint8_t);

 for (i = 0; i <= node->numports; i++) {
  if (node->ports[i]) {
   offset += _marshall64(buf + offset,
           node->ports[i]->guid);
   offset += _marshall8(buf + offset,
          (uint8_t) node->ports[i]->portnum);
   ports_stored_count++;
  }
 }


 _marshall8(buf + ports_stored_offset, ports_stored_count);

 if (ibnd_write(fd, buf, offset) < 0)
  return -1;

 return 0;
}

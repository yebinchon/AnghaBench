
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int maxhops_discovered; TYPE_1__* from_node; } ;
typedef TYPE_2__ ibnd_fabric_t ;
struct TYPE_4__ {int guid; } ;


 int IBND_FABRIC_CACHE_BUFLEN ;
 int IBND_FABRIC_CACHE_MAGIC ;
 int IBND_FABRIC_CACHE_VERSION ;
 scalar_t__ _marshall32 (int *,int ) ;
 scalar_t__ _marshall64 (int *,int ) ;
 scalar_t__ ibnd_write (int,int *,size_t) ;

__attribute__((used)) static int _cache_header_info(int fd, ibnd_fabric_t * fabric)
{
 uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
 size_t offset = 0;




 offset += _marshall32(buf + offset, IBND_FABRIC_CACHE_MAGIC);
 offset += _marshall32(buf + offset, IBND_FABRIC_CACHE_VERSION);

 offset += _marshall32(buf + offset, 0);

 offset += _marshall32(buf + offset, 0);
 offset += _marshall64(buf + offset, fabric->from_node->guid);
 offset += _marshall32(buf + offset, fabric->maxhops_discovered);

 if (ibnd_write(fd, buf, offset) < 0)
  return -1;

 return 0;
}

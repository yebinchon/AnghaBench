
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_2__* f_int; int from_node_guid; } ;
typedef TYPE_3__ ibnd_fabric_cache_t ;
struct TYPE_5__ {scalar_t__ maxhops_discovered; } ;
struct TYPE_6__ {TYPE_1__ fabric; } ;


 int IBND_DEBUG (char*) ;
 int IBND_FABRIC_CACHE_BUFLEN ;
 int IBND_FABRIC_CACHE_HEADER_LEN ;
 scalar_t__ IBND_FABRIC_CACHE_MAGIC ;
 scalar_t__ IBND_FABRIC_CACHE_VERSION ;
 scalar_t__ _unmarshall32 (int *,...) ;
 scalar_t__ _unmarshall64 (int *,int *) ;
 scalar_t__ ibnd_read (int,int *,int ) ;

__attribute__((used)) static int _load_header_info(int fd, ibnd_fabric_cache_t * fabric_cache,
        unsigned int *node_count, unsigned int *port_count)
{
 uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
 uint32_t magic = 0;
 uint32_t version = 0;
 size_t offset = 0;
 uint32_t tmp32;

 if (ibnd_read(fd, buf, IBND_FABRIC_CACHE_HEADER_LEN) < 0)
  return -1;

 offset += _unmarshall32(buf + offset, &magic);

 if (magic != IBND_FABRIC_CACHE_MAGIC) {
  IBND_DEBUG("invalid fabric cache file\n");
  return -1;
 }

 offset += _unmarshall32(buf + offset, &version);

 if (version != IBND_FABRIC_CACHE_VERSION) {
  IBND_DEBUG("invalid fabric cache version\n");
  return -1;
 }

 offset += _unmarshall32(buf + offset, node_count);
 offset += _unmarshall32(buf + offset, port_count);

 offset += _unmarshall64(buf + offset, &fabric_cache->from_node_guid);
 offset += _unmarshall32(buf + offset, &tmp32);
 fabric_cache->f_int->fabric.maxhops_discovered = tmp32;

 return 0;
}

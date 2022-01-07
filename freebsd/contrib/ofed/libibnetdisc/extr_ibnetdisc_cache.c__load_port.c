
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_7__ {void* portnum; int guid; } ;
struct TYPE_8__ {void* lmc; void* remoteport_flag; TYPE_1__ remoteport_cache_key; int node_guid; int info; int base_lid; void* ext_portnum; void* portnum; int guid; struct TYPE_8__* port; } ;
typedef TYPE_2__ ibnd_port_t ;
typedef TYPE_2__ ibnd_port_cache_t ;
typedef int ibnd_fabric_cache_t ;


 int IBND_DEBUG (char*) ;
 int IBND_FABRIC_CACHE_BUFLEN ;
 int IBND_PORT_CACHE_LEN ;
 int IB_SMP_DATA_SIZE ;
 scalar_t__ _unmarshall16 (void**,int *) ;
 scalar_t__ _unmarshall64 (void**,int *) ;
 scalar_t__ _unmarshall8 (void**,void**) ;
 scalar_t__ _unmarshall_buf (void**,int ,int ) ;
 int free (TYPE_2__*) ;
 scalar_t__ ibnd_read (int,void**,int ) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_2__*,char,int) ;
 int store_port_cache (TYPE_2__*,int *) ;

__attribute__((used)) static int _load_port(int fd, ibnd_fabric_cache_t * fabric_cache)
{
 uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
 ibnd_port_cache_t *port_cache = ((void*)0);
 ibnd_port_t *port = ((void*)0);
 size_t offset = 0;
 uint8_t tmp8;

 port_cache = (ibnd_port_cache_t *) malloc(sizeof(ibnd_port_cache_t));
 if (!port_cache) {
  IBND_DEBUG("OOM: port_cache\n");
  return -1;
 }
 memset(port_cache, '\0', sizeof(ibnd_port_cache_t));

 port = (ibnd_port_t *) malloc(sizeof(ibnd_port_t));
 if (!port) {
  IBND_DEBUG("OOM: port\n");
  free(port_cache);
  return -1;
 }
 memset(port, '\0', sizeof(ibnd_port_t));

 port_cache->port = port;

 if (ibnd_read(fd, buf, IBND_PORT_CACHE_LEN) < 0)
  goto cleanup;

 offset += _unmarshall64(buf + offset, &port->guid);
 offset += _unmarshall8(buf + offset, &tmp8);
 port->portnum = tmp8;
 offset += _unmarshall8(buf + offset, &tmp8);
 port->ext_portnum = tmp8;
 offset += _unmarshall16(buf + offset, &port->base_lid);
 offset += _unmarshall8(buf + offset, &port->lmc);
 offset += _unmarshall_buf(buf + offset, port->info, IB_SMP_DATA_SIZE);
 offset += _unmarshall64(buf + offset, &port_cache->node_guid);
 offset += _unmarshall8(buf + offset, &port_cache->remoteport_flag);
 offset +=
     _unmarshall64(buf + offset, &port_cache->remoteport_cache_key.guid);
 offset +=
     _unmarshall8(buf + offset,
    &port_cache->remoteport_cache_key.portnum);

 store_port_cache(port_cache, fabric_cache);

 return 0;

cleanup:
 free(port);
 free(port_cache);
 return -1;
}

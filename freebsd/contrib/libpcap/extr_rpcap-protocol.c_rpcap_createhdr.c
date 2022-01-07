
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8 ;
typedef int uint32 ;
typedef int uint16 ;
struct rpcap_header {int plen; int value; void* type; void* ver; } ;


 int htonl (int ) ;
 int htons (int ) ;
 int memset (struct rpcap_header*,int ,int) ;

void
rpcap_createhdr(struct rpcap_header *header, uint8 ver, uint8 type, uint16 value, uint32 length)
{
 memset(header, 0, sizeof(struct rpcap_header));

 header->ver = ver;
 header->type = type;
 header->value = htons(value);
 header->plen = htonl(length);
}

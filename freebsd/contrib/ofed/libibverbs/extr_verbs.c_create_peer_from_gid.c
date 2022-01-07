
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer_address {int size; void* address; } ;





__attribute__((used)) static inline int create_peer_from_gid(int family, void *raw_gid,
           struct peer_address *peer_address)
{
 switch (family) {
 case 129:
  peer_address->address = raw_gid + 12;
  peer_address->size = 4;
  break;
 case 128:
  peer_address->address = raw_gid;
  peer_address->size = 16;
  break;
 default:
  return -1;
 }

 return 0;
}

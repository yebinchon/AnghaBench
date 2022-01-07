
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct ieee802_1x_kay_peer {scalar_t__ key_server_priority; TYPE_1__ sci; } ;


 int ETH_ALEN ;
 int os_memcmp (int ,int ,int ) ;

__attribute__((used)) static int compare_priorities(const struct ieee802_1x_kay_peer *peer,
         const struct ieee802_1x_kay_peer *other)
{
 if (peer->key_server_priority < other->key_server_priority)
  return -1;
 if (other->key_server_priority < peer->key_server_priority)
  return 1;

 return os_memcmp(peer->sci.addr, other->sci.addr, ETH_ALEN);
}

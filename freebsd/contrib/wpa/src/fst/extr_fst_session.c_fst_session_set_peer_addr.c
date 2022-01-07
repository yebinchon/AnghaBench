
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * new_peer_addr; int * old_peer_addr; } ;
struct fst_session {TYPE_1__ data; } ;
typedef scalar_t__ Boolean ;


 int ETH_ALEN ;
 int os_memcpy (int *,int const*,int ) ;

void fst_session_set_peer_addr(struct fst_session *s, const u8 *addr,
          Boolean is_old)
{
 u8 *a = is_old ? s->data.old_peer_addr : s->data.new_peer_addr;

 os_memcpy(a, addr, ETH_ALEN);
}

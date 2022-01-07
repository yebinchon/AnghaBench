
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fst_session {int dummy; } ;
typedef int Boolean ;


 int ETH_ALEN ;
 int fst_read_peer_addr (char const*,int *) ;
 int fst_session_set_peer_addr (struct fst_session*,int *,int ) ;

int fst_session_set_str_peer_addr(struct fst_session *s, const char *mac,
      Boolean is_old)
{
 u8 peer_addr[ETH_ALEN];
 int res = fst_read_peer_addr(mac, peer_addr);

 if (res)
  return res;

 fst_session_set_peer_addr(s, peer_addr, is_old);

 return 0;
}

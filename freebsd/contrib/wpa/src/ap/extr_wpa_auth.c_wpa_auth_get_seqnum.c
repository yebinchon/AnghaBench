
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_authenticator {int cb_ctx; TYPE_1__* cb; } ;
struct TYPE_2__ {int (* get_seqnum ) (int ,int const*,int,int *) ;} ;


 int stub1 (int ,int const*,int,int *) ;

__attribute__((used)) static inline int wpa_auth_get_seqnum(struct wpa_authenticator *wpa_auth,
          const u8 *addr, int idx, u8 *seq)
{
 if (wpa_auth->cb->get_seqnum == ((void*)0))
  return -1;
 return wpa_auth->cb->get_seqnum(wpa_auth->cb_ctx, addr, idx, seq);
}

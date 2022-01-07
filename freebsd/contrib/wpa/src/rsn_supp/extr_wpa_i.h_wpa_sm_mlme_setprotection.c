
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int (* mlme_setprotection ) (int ,int const*,int,int) ;int ctx; } ;


 int WPA_ASSERT (int (*) (int ,int const*,int,int)) ;
 int stub1 (int ,int const*,int,int) ;

__attribute__((used)) static inline int wpa_sm_mlme_setprotection(struct wpa_sm *sm, const u8 *addr,
         int protect_type, int key_type)
{
 WPA_ASSERT(sm->ctx->mlme_setprotection);
 return sm->ctx->mlme_setprotection(sm->ctx->ctx, addr, protect_type,
        key_type);
}

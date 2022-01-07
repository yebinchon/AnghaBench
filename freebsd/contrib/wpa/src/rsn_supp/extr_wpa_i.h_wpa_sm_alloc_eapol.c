
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wpa_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int * (* alloc_eapol ) (int ,int ,void const*,int ,size_t*,void**) ;} ;


 int WPA_ASSERT (int * (*) (int ,int ,void const*,int ,size_t*,void**)) ;
 int * stub1 (int ,int ,void const*,int ,size_t*,void**) ;

__attribute__((used)) static inline u8 * wpa_sm_alloc_eapol(struct wpa_sm *sm, u8 type,
          const void *data, u16 data_len,
          size_t *msg_len, void **data_pos)
{
 WPA_ASSERT(sm->ctx->alloc_eapol);
 return sm->ctx->alloc_eapol(sm->ctx->ctx, type, data, data_len,
        msg_len, data_pos);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kck_len; int kck; int kek_len; int kek; } ;
struct wpa_sm {int rx_replay_counter; TYPE_2__ ptk; TYPE_1__* ctx; } ;
struct TYPE_3__ {int ctx; int (* set_rekey_offload ) (int ,int ,int ,int ,int ,int ) ;} ;


 int stub1 (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void wpa_sm_set_rekey_offload(struct wpa_sm *sm)
{
 if (!sm->ctx->set_rekey_offload)
  return;
 sm->ctx->set_rekey_offload(sm->ctx->ctx, sm->ptk.kek, sm->ptk.kek_len,
       sm->ptk.kck, sm->ptk.kck_len,
       sm->rx_replay_counter);
}

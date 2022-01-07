
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {TYPE_1__* ctx; } ;
struct wpa_channel_info {int dummy; } ;
struct TYPE_2__ {int (* channel_info ) (int ,struct wpa_channel_info*) ;int ctx; } ;


 int stub1 (int ,struct wpa_channel_info*) ;

__attribute__((used)) static inline int wpa_sm_channel_info(struct wpa_sm *sm,
          struct wpa_channel_info *ci)
{
 if (!sm->ctx->channel_info)
  return -1;
 return sm->ctx->channel_info(sm->ctx->ctx, ci);
}

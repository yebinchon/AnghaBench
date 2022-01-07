
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eapol_sm {TYPE_1__* ctx; } ;
struct TYPE_2__ {int ctx; int (* set_anon_id ) (int ,int const*,size_t) ;} ;


 int stub1 (int ,int const*,size_t) ;

__attribute__((used)) static void eapol_sm_set_anon_id(void *ctx, const u8 *id, size_t len)
{
 struct eapol_sm *sm = ctx;

 if (sm->ctx->set_anon_id)
  sm->ctx->set_anon_id(sm->ctx->ctx, id, len);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpa_sm {TYPE_1__* ctx; int group_cipher; int wpa_rsc_relaxation; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_WARNING ;
 int wpa_cipher_rsc_len (int ) ;
 int wpa_msg (int ,int ,char*,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static int wpa_supplicant_rsc_relaxation(const struct wpa_sm *sm,
      const u8 *rsc)
{
 int rsclen;

 if (!sm->wpa_rsc_relaxation)
  return 0;

 rsclen = wpa_cipher_rsc_len(sm->group_cipher);
 if (rsclen == 6 && ((rsc[5] && !rsc[0]) || rsc[6] || rsc[7])) {
  wpa_msg(sm->ctx->msg_ctx, MSG_WARNING,
   "RSC %02x%02x%02x%02x%02x%02x%02x%02x is likely bogus, using 0",
   rsc[0], rsc[1], rsc[2], rsc[3],
   rsc[4], rsc[5], rsc[6], rsc[7]);

  return 1;
 }

 return 0;
}

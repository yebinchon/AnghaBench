
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_sm {scalar_t__ pairwise_cipher; TYPE_1__* ctx; } ;
struct TYPE_2__ {int msg_ctx; } ;


 int MSG_INFO ;
 scalar_t__ WPA_CIPHER_NONE ;
 int wpa_msg (int ,int ,char*) ;

__attribute__((used)) static int wpa_supplicant_gtk_tx_bit_workaround(const struct wpa_sm *sm,
      int tx)
{
 if (tx && sm->pairwise_cipher != WPA_CIPHER_NONE) {





  wpa_msg(sm->ctx->msg_ctx, MSG_INFO,
   "WPA: Tx bit set for GTK, but pairwise "
   "keys are used - ignore Tx bit");
  return 0;
 }
 return tx;
}

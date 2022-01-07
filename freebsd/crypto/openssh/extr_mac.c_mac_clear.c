
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshmac {scalar_t__ type; int * umac_ctx; int * hmac_ctx; } ;


 scalar_t__ SSH_UMAC ;
 scalar_t__ SSH_UMAC128 ;
 int ssh_hmac_free (int *) ;
 int umac128_delete (int *) ;
 int umac_delete (int *) ;

void
mac_clear(struct sshmac *mac)
{
 if (mac->type == SSH_UMAC) {
  if (mac->umac_ctx != ((void*)0))
   umac_delete(mac->umac_ctx);
 } else if (mac->type == SSH_UMAC128) {
  if (mac->umac_ctx != ((void*)0))
   umac128_delete(mac->umac_ctx);
 } else if (mac->hmac_ctx != ((void*)0))
  ssh_hmac_free(mac->hmac_ctx);
 mac->hmac_ctx = ((void*)0);
 mac->umac_ctx = ((void*)0);
}

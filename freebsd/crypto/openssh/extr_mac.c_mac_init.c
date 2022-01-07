
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshmac {int type; int * key; int * umac_ctx; int key_len; int * hmac_ctx; } ;



 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;


 int ssh_hmac_init (int *,int *,int ) ;
 int * umac128_new (int *) ;
 int * umac_new (int *) ;

int
mac_init(struct sshmac *mac)
{
 if (mac->key == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;
 switch (mac->type) {
 case 130:
  if (mac->hmac_ctx == ((void*)0) ||
      ssh_hmac_init(mac->hmac_ctx, mac->key, mac->key_len) < 0)
   return SSH_ERR_INVALID_ARGUMENT;
  return 0;
 case 129:
  if ((mac->umac_ctx = umac_new(mac->key)) == ((void*)0))
   return SSH_ERR_ALLOC_FAIL;
  return 0;
 case 128:
  if ((mac->umac_ctx = umac128_new(mac->key)) == ((void*)0))
   return SSH_ERR_ALLOC_FAIL;
  return 0;
 default:
  return SSH_ERR_INVALID_ARGUMENT;
 }
}

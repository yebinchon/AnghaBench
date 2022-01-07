
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_pkex {int exchange_resp; int exchange_req; int peer_bootstrap_key; int y; int x; struct dpp_pkex* code; struct dpp_pkex* identifier; } ;


 int EVP_PKEY_free (int ) ;
 int os_free (struct dpp_pkex*) ;
 int wpabuf_free (int ) ;

void dpp_pkex_free(struct dpp_pkex *pkex)
{
 if (!pkex)
  return;

 os_free(pkex->identifier);
 os_free(pkex->code);
 EVP_PKEY_free(pkex->x);
 EVP_PKEY_free(pkex->y);
 EVP_PKEY_free(pkex->peer_bootstrap_key);
 wpabuf_free(pkex->exchange_req);
 wpabuf_free(pkex->exchange_resp);
 os_free(pkex);
}

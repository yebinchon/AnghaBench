
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct sae_data {int send_confirm; TYPE_1__* tmp; int peer_commit_scalar; } ;
struct TYPE_2__ {int peer_commit_element_ffc; int own_commit_element_ffc; int own_commit_scalar; int peer_commit_element_ecc; int own_commit_element_ecc; scalar_t__ ec; } ;


 int SHA256_MAC_LEN ;
 int sae_cn_confirm_ecc (struct sae_data*,int const*,int ,int ,int ,int ,int *) ;
 int sae_cn_confirm_ffc (struct sae_data*,int const*,int ,int ,int ,int ,int *) ;
 int * wpabuf_put (struct wpabuf*,int ) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;

void sae_write_confirm(struct sae_data *sae, struct wpabuf *buf)
{
 const u8 *sc;

 if (sae->tmp == ((void*)0))
  return;


 sc = wpabuf_put(buf, 0);
 wpabuf_put_le16(buf, sae->send_confirm);
 if (sae->send_confirm < 0xffff)
  sae->send_confirm++;

 if (sae->tmp->ec)
  sae_cn_confirm_ecc(sae, sc, sae->tmp->own_commit_scalar,
       sae->tmp->own_commit_element_ecc,
       sae->peer_commit_scalar,
       sae->tmp->peer_commit_element_ecc,
       wpabuf_put(buf, SHA256_MAC_LEN));
 else
  sae_cn_confirm_ffc(sae, sc, sae->tmp->own_commit_scalar,
       sae->tmp->own_commit_element_ffc,
       sae->peer_commit_scalar,
       sae->tmp->peer_commit_element_ffc,
       wpabuf_put(buf, SHA256_MAC_LEN));
}

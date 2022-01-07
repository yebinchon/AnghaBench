
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dpp_bootstrap_info {int uri; int type; } ;
struct dpp_authentication {struct dpp_bootstrap_info* own_bi; struct dpp_bootstrap_info* tmp_own_bi; TYPE_2__* peer_bi; } ;
struct TYPE_4__ {TYPE_1__* curve; } ;
struct TYPE_3__ {int name; } ;


 int DPP_BOOTSTRAP_QR_CODE ;
 int MSG_DEBUG ;
 int dpp_bootstrap_info_free (struct dpp_bootstrap_info*) ;
 char* dpp_keygen (struct dpp_bootstrap_info*,int ,int *,int ) ;
 int os_free (char*) ;
 int os_malloc (size_t) ;
 int os_snprintf (int ,size_t,char*,char*) ;
 scalar_t__ os_strlen (char*) ;
 struct dpp_bootstrap_info* os_zalloc (int) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int dpp_autogen_bootstrap_key(struct dpp_authentication *auth)
{
 struct dpp_bootstrap_info *bi;
 char *pk = ((void*)0);
 size_t len;

 if (auth->own_bi)
  return 0;

 bi = os_zalloc(sizeof(*bi));
 if (!bi)
  return -1;
 bi->type = DPP_BOOTSTRAP_QR_CODE;
 pk = dpp_keygen(bi, auth->peer_bi->curve->name, ((void*)0), 0);
 if (!pk)
  goto fail;

 len = 4;
 len += 4 + os_strlen(pk);
 bi->uri = os_malloc(len + 1);
 if (!bi->uri)
  goto fail;
 os_snprintf(bi->uri, len + 1, "DPP:K:%s;;", pk);
 wpa_printf(MSG_DEBUG,
     "DPP: Auto-generated own bootstrapping key info: URI %s",
     bi->uri);

 auth->tmp_own_bi = auth->own_bi = bi;

 os_free(pk);

 return 0;
fail:
 os_free(pk);
 dpp_bootstrap_info_free(bi);
 return -1;
}

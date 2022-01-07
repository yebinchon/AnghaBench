
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_bootstrap_info {int pubkey; struct dpp_bootstrap_info* info; struct dpp_bootstrap_info* uri; } ;


 int EVP_PKEY_free (int ) ;
 int os_free (struct dpp_bootstrap_info*) ;

void dpp_bootstrap_info_free(struct dpp_bootstrap_info *info)
{
 if (!info)
  return;
 os_free(info->uri);
 os_free(info->info);
 EVP_PKEY_free(info->pubkey);
 os_free(info);
}

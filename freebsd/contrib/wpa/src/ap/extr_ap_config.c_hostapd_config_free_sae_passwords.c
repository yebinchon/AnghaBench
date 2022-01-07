
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sae_password_entry {struct sae_password_entry* identifier; int password; struct sae_password_entry* next; } ;
struct hostapd_bss_config {struct sae_password_entry* sae_passwords; } ;


 int os_free (struct sae_password_entry*) ;
 int str_clear_free (int ) ;

__attribute__((used)) static void hostapd_config_free_sae_passwords(struct hostapd_bss_config *conf)
{
 struct sae_password_entry *pw, *tmp;

 pw = conf->sae_passwords;
 conf->sae_passwords = ((void*)0);
 while (pw) {
  tmp = pw;
  pw = pw->next;
  str_clear_free(tmp->password);
  os_free(tmp->identifier);
  os_free(tmp);
 }
}

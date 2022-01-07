
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dpp_global {int configurator; } ;
struct dpp_configurator {int id; int list; } ;


 int bin_clear_free (int *,size_t) ;
 int dl_list_add (int *,int *) ;
 int dpp_configurator_free (struct dpp_configurator*) ;
 struct dpp_configurator* dpp_keygen_configurator (char*,int *,size_t) ;
 int dpp_next_configurator_id (struct dpp_global*) ;
 char* get_param (char const*,char*) ;
 scalar_t__ hexstr2bin (char*,int *,size_t) ;
 int os_free (char*) ;
 int * os_malloc (size_t) ;
 int os_strlen (char*) ;
 int str_clear_free (char*) ;

int dpp_configurator_add(struct dpp_global *dpp, const char *cmd)
{
 char *curve = ((void*)0);
 char *key = ((void*)0);
 u8 *privkey = ((void*)0);
 size_t privkey_len = 0;
 int ret = -1;
 struct dpp_configurator *conf = ((void*)0);

 curve = get_param(cmd, " curve=");
 key = get_param(cmd, " key=");

 if (key) {
  privkey_len = os_strlen(key) / 2;
  privkey = os_malloc(privkey_len);
  if (!privkey ||
      hexstr2bin(key, privkey, privkey_len) < 0)
   goto fail;
 }

 conf = dpp_keygen_configurator(curve, privkey, privkey_len);
 if (!conf)
  goto fail;

 conf->id = dpp_next_configurator_id(dpp);
 dl_list_add(&dpp->configurator, &conf->list);
 ret = conf->id;
 conf = ((void*)0);
fail:
 os_free(curve);
 str_clear_free(key);
 bin_clear_free(privkey, privkey_len);
 dpp_configurator_free(conf);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_configuration {int akm; } ;


 int DPP_AKM_DPP ;
 int DPP_AKM_PSK ;
 int DPP_AKM_PSK_SAE ;
 int DPP_AKM_PSK_SAE_DPP ;
 int DPP_AKM_SAE ;
 int DPP_AKM_SAE_DPP ;
 scalar_t__ bin_str_eq (char const*,size_t,char*) ;
 int dpp_configuration_free (struct dpp_configuration*) ;
 char* os_strchr (char const*,char) ;
 size_t os_strlen (char const*) ;
 struct dpp_configuration* os_zalloc (int) ;

struct dpp_configuration * dpp_configuration_alloc(const char *type)
{
 struct dpp_configuration *conf;
 const char *end;
 size_t len;

 conf = os_zalloc(sizeof(*conf));
 if (!conf)
  goto fail;

 end = os_strchr(type, ' ');
 if (end)
  len = end - type;
 else
  len = os_strlen(type);

 if (bin_str_eq(type, len, "psk"))
  conf->akm = DPP_AKM_PSK;
 else if (bin_str_eq(type, len, "sae"))
  conf->akm = DPP_AKM_SAE;
 else if (bin_str_eq(type, len, "psk-sae") ||
   bin_str_eq(type, len, "psk+sae"))
  conf->akm = DPP_AKM_PSK_SAE;
 else if (bin_str_eq(type, len, "sae-dpp") ||
   bin_str_eq(type, len, "dpp+sae"))
  conf->akm = DPP_AKM_SAE_DPP;
 else if (bin_str_eq(type, len, "psk-sae-dpp") ||
   bin_str_eq(type, len, "dpp+psk+sae"))
  conf->akm = DPP_AKM_PSK_SAE_DPP;
 else if (bin_str_eq(type, len, "dpp"))
  conf->akm = DPP_AKM_DPP;
 else
  goto fail;

 return conf;
fail:
 dpp_configuration_free(conf);
 return ((void*)0);
}

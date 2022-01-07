
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kcm_context ;
 char const* krb5_config_get_string (int ,int *,char*,char*,char const*,int *) ;

__attribute__((used)) static const char *
kcm_system_config_get_string(const char *string)
{
    return krb5_config_get_string(kcm_context, ((void*)0), "kcm",
      "system_ccache", string, ((void*)0));
}

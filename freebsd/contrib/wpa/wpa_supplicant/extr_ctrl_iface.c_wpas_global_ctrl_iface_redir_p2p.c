
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int * p2p_init_wpa_s; } ;


 scalar_t__ os_strcmp (char*,char const*) ;
 int os_strlen (char const*) ;
 scalar_t__ os_strncmp (char*,char const*,int ) ;
 char* wpa_supplicant_ctrl_iface_process (int *,char*,size_t*) ;

__attribute__((used)) static char * wpas_global_ctrl_iface_redir_p2p(struct wpa_global *global,
            char *buf, size_t *resp_len)
{
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {int ifname; } ;
typedef int cmd ;


 int MSG_INFO ;
 int os_snprintf (char*,int,char*,char const*) ;
 scalar_t__ wpa_command (int ,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void remove_sp_creds(struct hs20_osu_client *ctx, const char *fqdn)
{
 char cmd[300];
 os_snprintf(cmd, sizeof(cmd), "REMOVE_CRED provisioning_sp=%s", fqdn);
 if (wpa_command(ctx->ifname, cmd) < 0)
  wpa_printf(MSG_INFO, "Failed to remove old credential(s)");
}

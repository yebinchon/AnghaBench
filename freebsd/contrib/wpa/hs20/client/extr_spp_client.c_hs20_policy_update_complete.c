
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hs20_osu_client {int ifname; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 int cmd_set_pps (struct hs20_osu_client*,char const*) ;
 scalar_t__ wpa_command (int ,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void hs20_policy_update_complete(struct hs20_osu_client *ctx,
     const char *pps_fname)
{
 wpa_printf(MSG_INFO, "Policy update completed");





 wpa_printf(MSG_INFO, "Updating wpa_supplicant credentials");
 cmd_set_pps(ctx, pps_fname);

 wpa_printf(MSG_INFO, "Requesting reconnection with updated configuration");
 if (wpa_command(ctx->ifname, "INTERWORKING_SELECT auto") < 0)
  wpa_printf(MSG_ERROR, "Failed to request wpa_supplicant to reconnect");
}

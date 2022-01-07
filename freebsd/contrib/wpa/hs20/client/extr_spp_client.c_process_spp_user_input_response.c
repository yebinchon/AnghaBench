
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
struct hs20_osu_client {int dummy; } ;
typedef int fname ;


 int MSG_INFO ;
 int debug_dump_node (struct hs20_osu_client*,char*,int *) ;
 scalar_t__ hs20_add_mo (struct hs20_osu_client*,int *,char*,int) ;
 int hs20_spp_update_response (struct hs20_osu_client*,char const*,char*,char*) ;
 int hs20_sub_rem_complete (struct hs20_osu_client*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int process_spp_user_input_response(struct hs20_osu_client *ctx,
        const char *session_id,
        xml_node_t *add_mo)
{
 int ret;
 char fname[300];

 debug_dump_node(ctx, "addMO", add_mo);

 wpa_printf(MSG_INFO, "Subscription registration completed");

 if (hs20_add_mo(ctx, add_mo, fname, sizeof(fname)) < 0) {
  wpa_printf(MSG_INFO, "Could not add MO");
  ret = hs20_spp_update_response(
   ctx, session_id,
   "Error occurred",
   "MO addition or update failed");
  return 0;
 }

 ret = hs20_spp_update_response(ctx, session_id, "OK", ((void*)0));
 if (ret == 0)
  hs20_sub_rem_complete(ctx, fname);

 return 0;
}

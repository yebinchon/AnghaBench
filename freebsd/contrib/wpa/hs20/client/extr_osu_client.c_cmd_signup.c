
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;
struct hs20_osu_client {char* ifname; } ;
typedef int fname ;
typedef int dir ;
typedef int buf ;


 scalar_t__ EEXIST ;
 int MSG_INFO ;
 int S_IROTH ;
 int S_IRWXG ;
 int S_IRWXU ;
 int S_IXOTH ;
 int android_update_permission (char*,int) ;
 int cmd_osu_select (struct hs20_osu_client*,char*,int,int,char const*) ;
 scalar_t__ errno ;
 int get_wpa_cli_event (struct wpa_ctrl*,char*,char*,int) ;
 int * getcwd (char*,int) ;
 scalar_t__ mkdir (char*,int) ;
 struct wpa_ctrl* open_wpa_mon (char const*) ;
 int snprintf (char*,int,char*,char*) ;
 int strerror (scalar_t__) ;
 scalar_t__ wpa_command (char const*,char*) ;
 int wpa_ctrl_close (struct wpa_ctrl*) ;
 int wpa_ctrl_detach (struct wpa_ctrl*) ;
 int wpa_printf (int ,char*,...) ;
 int write_summary (struct hs20_osu_client*,char*) ;

__attribute__((used)) static int cmd_signup(struct hs20_osu_client *ctx, int no_prod_assoc,
        const char *friendly_name)
{
 char dir[255];
 char fname[300], buf[400];
 struct wpa_ctrl *mon;
 const char *ifname;
 int res;

 ifname = ctx->ifname;

 if (getcwd(dir, sizeof(dir)) == ((void*)0))
  return -1;

 snprintf(fname, sizeof(fname), "%s/osu-info", dir);
 if (mkdir(fname, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH) < 0 &&
     errno != EEXIST) {
  wpa_printf(MSG_INFO, "mkdir(%s) failed: %s",
      fname, strerror(errno));
  return -1;
 }

 android_update_permission(fname, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH);

 snprintf(buf, sizeof(buf), "SET osu_dir %s", fname);
 if (wpa_command(ifname, buf) < 0) {
  wpa_printf(MSG_INFO, "Failed to configure osu_dir to wpa_supplicant");
  return -1;
 }

 mon = open_wpa_mon(ifname);
 if (mon == ((void*)0))
  return -1;

 wpa_printf(MSG_INFO, "Starting OSU fetch");
 write_summary(ctx, "Starting OSU provider information fetch");
 if (wpa_command(ifname, "FETCH_OSU") < 0) {
  wpa_printf(MSG_INFO, "Could not start OSU fetch");
  wpa_ctrl_detach(mon);
  wpa_ctrl_close(mon);
  return -1;
 }
 res = get_wpa_cli_event(mon, "OSU provider fetch completed",
    buf, sizeof(buf));

 wpa_ctrl_detach(mon);
 wpa_ctrl_close(mon);

 if (res < 0) {
  wpa_printf(MSG_INFO, "OSU fetch did not complete");
  write_summary(ctx, "OSU fetch did not complete");
  return -1;
 }
 wpa_printf(MSG_INFO, "OSU provider fetch completed");

 return cmd_osu_select(ctx, fname, 1, no_prod_assoc, friendly_name);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_config {int hessid; } ;
struct global_parse_data {int dummy; } ;


 int MSG_ERROR ;
 scalar_t__ hwaddr_aton2 (char const*,int ) ;
 int wpa_printf (int ,char*,int,char const*) ;

__attribute__((used)) static int wpa_config_process_hessid(
 const struct global_parse_data *data,
 struct wpa_config *config, int line, const char *pos)
{
 if (hwaddr_aton2(pos, config->hessid) < 0) {
  wpa_printf(MSG_ERROR, "Line %d: Invalid hessid '%s'",
      line, pos);
  return -1;
 }

 return 0;
}

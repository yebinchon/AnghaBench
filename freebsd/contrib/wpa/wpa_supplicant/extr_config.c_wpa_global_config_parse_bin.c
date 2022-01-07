
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_config {int dummy; } ;
struct global_parse_data {int name; scalar_t__ param1; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_free (struct wpabuf*) ;
 struct wpabuf* wpabuf_parse_bin (char const*) ;

__attribute__((used)) static int wpa_global_config_parse_bin(const struct global_parse_data *data,
           struct wpa_config *config, int line,
           const char *pos)
{
 struct wpabuf **dst, *tmp;

 tmp = wpabuf_parse_bin(pos);
 if (!tmp)
  return -1;

 dst = (struct wpabuf **) (((u8 *) config) + (long) data->param1);
 wpabuf_free(*dst);
 *dst = tmp;
 wpa_printf(MSG_DEBUG, "%s", data->name);

 return 0;
}

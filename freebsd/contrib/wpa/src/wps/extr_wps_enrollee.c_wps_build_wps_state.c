
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int wps_state; scalar_t__ ap; } ;


 int ATTR_WPS_STATE ;
 int MSG_DEBUG ;
 int WPS_STATE_NOT_CONFIGURED ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static int wps_build_wps_state(struct wps_data *wps, struct wpabuf *msg)
{
 u8 state;
 if (wps->wps->ap)
  state = wps->wps->wps_state;
 else
  state = WPS_STATE_NOT_CONFIGURED;
 wpa_printf(MSG_DEBUG, "WPS:  * Wi-Fi Protected Setup State (%d)",
     state);
 wpabuf_put_be16(msg, ATTR_WPS_STATE);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, state);
 return 0;
}

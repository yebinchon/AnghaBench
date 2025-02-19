
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WLAN_EID_MEASURE_REPORT ;
 int wpabuf_put_data (struct wpabuf*,int const*,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int) ;

__attribute__((used)) static int wpas_rrm_report_elem(struct wpabuf **buf, u8 token, u8 mode, u8 type,
    const u8 *data, size_t data_len)
{
 if (wpabuf_resize(buf, 5 + data_len))
  return -1;

 wpabuf_put_u8(*buf, WLAN_EID_MEASURE_REPORT);
 wpabuf_put_u8(*buf, 3 + data_len);
 wpabuf_put_u8(*buf, token);
 wpabuf_put_u8(*buf, mode);
 wpabuf_put_u8(*buf, type);

 if (data_len)
  wpabuf_put_data(*buf, data, data_len);

 return 0;
}

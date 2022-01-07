
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct fst_iface {int dummy; } ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;


 int band_freq (int ) ;
 int fst_hw_mode_to_band (int) ;
 int fst_iface_get_channel_info (struct fst_iface*,int*,int *) ;
 int fst_iface_get_group_id (struct fst_iface*) ;
 int fst_iface_get_llt (struct fst_iface*) ;
 int fst_iface_get_name (struct fst_iface*) ;
 struct wpabuf* fst_iface_get_peer_mb_ie (struct fst_iface*,int const*) ;
 int fst_iface_get_priority (struct fst_iface*) ;
 scalar_t__ os_snprintf (char*,size_t,char*,...) ;
 scalar_t__ wpa_snprintf_hex (char*,size_t,int ,int ) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static int print_band(unsigned num, struct fst_iface *iface, const u8 *addr,
        char *buf, size_t buflen)
{
 const struct wpabuf *wpabuf;
 enum hostapd_hw_mode hw_mode;
 u8 channel;
 int ret = 0;

 fst_iface_get_channel_info(iface, &hw_mode, &channel);

 ret += os_snprintf(buf + ret, buflen - ret, "band%u_frequency=%s\n",
      num, band_freq(fst_hw_mode_to_band(hw_mode)));
 ret += os_snprintf(buf + ret, buflen - ret, "band%u_iface=%s\n",
      num, fst_iface_get_name(iface));
 wpabuf = fst_iface_get_peer_mb_ie(iface, addr);
 if (wpabuf) {
  ret += os_snprintf(buf + ret, buflen - ret, "band%u_mb_ies=",
       num);
  ret += wpa_snprintf_hex(buf + ret, buflen - ret,
     wpabuf_head(wpabuf),
     wpabuf_len(wpabuf));
  ret += os_snprintf(buf + ret, buflen - ret, "\n");
 }
 ret += os_snprintf(buf + ret, buflen - ret, "band%u_fst_group_id=%s\n",
      num, fst_iface_get_group_id(iface));
 ret += os_snprintf(buf + ret, buflen - ret, "band%u_fst_priority=%u\n",
      num, fst_iface_get_priority(iface));
 ret += os_snprintf(buf + ret, buflen - ret, "band%u_fst_llt=%u\n",
      num, fst_iface_get_llt(iface));

 return ret;
}

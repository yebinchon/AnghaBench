
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int pref ;


 int MSG_WARNING ;
 int os_memcpy (char*,char const*,int) ;
 int wpa_printf (int ,char*) ;
 int wpa_snprintf_hex (char*,size_t,int const*,size_t) ;

__attribute__((used)) static void wpas_p2ps_get_feat_cap_str(char *buf, size_t buf_len,
           const u8 *feat_cap, size_t feat_cap_len)
{
 static const char pref[] = " feature_cap=";
 int ret;

 buf[0] = '\0';
 if (!feat_cap || !feat_cap_len || buf_len < sizeof(pref) + 2)
  return;

 os_memcpy(buf, pref, sizeof(pref));
 ret = wpa_snprintf_hex(&buf[sizeof(pref) - 1],
          buf_len - sizeof(pref) + 1,
          feat_cap, feat_cap_len);

 if (ret != (2 * (int) feat_cap_len))
  wpa_printf(MSG_WARNING, "P2PS feature_cap bytes truncated");
}

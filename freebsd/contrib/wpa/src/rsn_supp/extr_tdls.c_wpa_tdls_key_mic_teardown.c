
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int trans_seq ;
struct wpa_tdls_ftie {int mic; } ;
typedef int rcode ;
typedef int dtoken ;


 int MSG_DEBUG ;
 int MSG_WARNING ;
 int TDLS_MIC_LEN ;
 int WPA_PUT_LE16 (int*,int ) ;
 int omac1_aes_128 (int const*,int*,int,int*) ;
 int os_free (int*) ;
 int os_memcpy (int*,int const*,int) ;
 int os_memset (int ,int ,int ) ;
 int* os_zalloc (int) ;
 int wpa_hexdump (int ,char*,int*,int) ;
 int wpa_hexdump_key (int ,char*,int const*,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpa_tdls_key_mic_teardown(const u8 *kck, u8 trans_seq, u16 rcode,
         u8 dtoken, const u8 *lnkid,
         const u8 *ftie, u8 *mic)
{
 u8 *buf, *pos;
 struct wpa_tdls_ftie *_ftie;
 int ret;
 int len;

 if (lnkid == ((void*)0))
  return -1;

 len = 2 + lnkid[1] + sizeof(rcode) + sizeof(dtoken) +
  sizeof(trans_seq) + 2 + ftie[1];

 buf = os_zalloc(len);
 if (!buf) {
  wpa_printf(MSG_WARNING, "TDLS: No memory for MIC calculation");
  return -1;
 }

 pos = buf;

 os_memcpy(pos, lnkid, 2 + lnkid[1]);
 pos += 2 + lnkid[1];

 WPA_PUT_LE16(pos, rcode);
 pos += sizeof(rcode);

 *pos++ = dtoken;

 *pos++ = trans_seq;

 os_memcpy(pos, ftie, 2 + ftie[1]);
 _ftie = (struct wpa_tdls_ftie *) pos;
 os_memset(_ftie->mic, 0, TDLS_MIC_LEN);
 pos += 2 + ftie[1];

 wpa_hexdump(MSG_DEBUG, "TDLS: Data for FTIE MIC", buf, pos - buf);
 wpa_hexdump_key(MSG_DEBUG, "TDLS: KCK", kck, 16);
 ret = omac1_aes_128(kck, buf, pos - buf, mic);
 os_free(buf);
 wpa_hexdump(MSG_DEBUG, "TDLS: FTIE MIC", mic, 16);
 return ret;
}

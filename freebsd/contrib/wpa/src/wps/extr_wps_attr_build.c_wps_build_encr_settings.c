
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int keywrapkey; } ;
struct wpabuf {int dummy; } ;


 size_t const ATTR_ENCR_SETTINGS ;
 int MSG_DEBUG ;
 scalar_t__ aes_128_cbc_encrypt (int ,int *,int *,size_t const) ;
 int os_memset (int *,size_t,size_t) ;
 scalar_t__ random_get_bytes (int *,size_t const) ;
 int wpa_printf (int ,char*) ;
 size_t const wpabuf_len (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,size_t const) ;
 int wpabuf_put_be16 (struct wpabuf*,size_t const) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;

int wps_build_encr_settings(struct wps_data *wps, struct wpabuf *msg,
       struct wpabuf *plain)
{
 size_t pad_len;
 const size_t block_size = 16;
 u8 *iv, *data;

 wpa_printf(MSG_DEBUG, "WPS:  * Encrypted Settings");


 pad_len = block_size - wpabuf_len(plain) % block_size;
 os_memset(wpabuf_put(plain, pad_len), pad_len, pad_len);

 wpabuf_put_be16(msg, ATTR_ENCR_SETTINGS);
 wpabuf_put_be16(msg, block_size + wpabuf_len(plain));

 iv = wpabuf_put(msg, block_size);
 if (random_get_bytes(iv, block_size) < 0)
  return -1;

 data = wpabuf_put(msg, 0);
 wpabuf_put_buf(msg, plain);
 if (aes_128_cbc_encrypt(wps->keywrapkey, iv, data, wpabuf_len(plain)))
  return -1;

 return 0;
}

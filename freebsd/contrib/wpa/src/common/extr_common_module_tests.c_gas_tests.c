
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int WLAN_ACTION_PUBLIC ;
 int WLAN_PA_GAS_INITIAL_REQ ;
 int gas_anqp_set_len (struct wpabuf*) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put_be32 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static int gas_tests(void)
{
 struct wpabuf *buf;

 wpa_printf(MSG_INFO, "gas tests");
 gas_anqp_set_len(((void*)0));

 buf = wpabuf_alloc(1);
 if (buf == ((void*)0))
  return -1;
 gas_anqp_set_len(buf);
 wpabuf_free(buf);

 buf = wpabuf_alloc(20);
 if (buf == ((void*)0))
  return -1;
 wpabuf_put_u8(buf, WLAN_ACTION_PUBLIC);
 wpabuf_put_u8(buf, WLAN_PA_GAS_INITIAL_REQ);
 wpabuf_put_u8(buf, 0);
 wpabuf_put_be32(buf, 0);
 wpabuf_put_u8(buf, 0);
 gas_anqp_set_len(buf);
 wpabuf_free(buf);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int settings_delay_time; int request_to_enroll; int network_key_shareable; int authorized_macs; int version2; int num_vendor_ext; int num_req_dev_type; int network_key_idx; int num_cred; int ap_setup_locked; int network_key; } ;
struct wps_attr_parse_test {scalar_t__ result; int extra; int data; } ;
struct wpabuf {int dummy; } ;


 unsigned int ARRAY_SIZE (struct wps_attr_parse_test*) ;
 int MAX_CRED_COUNT ;
 int MAX_REQ_DEV_TYPE_COUNT ;
 int MAX_WPS_PARSE_VENDOR_EXT ;
 int MSG_ERROR ;
 int MSG_INFO ;
 scalar_t__ hexstr2bin (int ,int ,size_t) ;
 int os_strlen (int ) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (size_t) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,size_t) ;
 struct wps_attr_parse_test* wps_attr_parse_test_cases ;
 scalar_t__ wps_parse_msg (struct wpabuf*,struct wps_parse_attr*) ;

__attribute__((used)) static int wps_attr_parse_tests(void)
{
 struct wps_parse_attr attr;
 unsigned int i;
 int ret = 0;

 wpa_printf(MSG_INFO, "WPS attribute parsing tests");

 for (i = 0; i < ARRAY_SIZE(wps_attr_parse_test_cases); i++) {
  struct wpabuf *buf;
  size_t len;
  const struct wps_attr_parse_test *test =
   &wps_attr_parse_test_cases[i];

  len = os_strlen(test->data) / 2;
  buf = wpabuf_alloc(len);
  if (buf == ((void*)0))
   return -1;
  if (hexstr2bin(test->data, wpabuf_put(buf, len), len) < 0) {
   wpabuf_free(buf);
   return -1;
  }
  if (wps_parse_msg(buf, &attr) != test->result) {
   wpa_printf(MSG_ERROR, "WPS attribute parsing test %u failed: %s",
       i, test->data);
   ret = -1;
  }
  switch (test->extra) {
  case 1:
   if (!attr.network_key || !attr.ap_setup_locked)
    ret = -1;
   break;
  case 2:
   if (attr.num_cred != MAX_CRED_COUNT)
    ret = -1;
   break;
  case 3:
   if (!attr.network_key_idx)
    ret = -1;
   break;
  case 4:
   if (attr.num_req_dev_type != MAX_REQ_DEV_TYPE_COUNT)
    ret = -1;
   break;
  case 5:
   if (attr.num_vendor_ext != MAX_WPS_PARSE_VENDOR_EXT)
    ret = -1;
   break;
  case 6:
   if (!attr.version2 ||
       !attr.authorized_macs ||
       !attr.network_key_shareable ||
       !attr.request_to_enroll ||
       !attr.settings_delay_time)
    ret = -1;
   break;
  }
  wpabuf_free(buf);
 }

 return ret;
}

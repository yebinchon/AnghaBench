
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ie_data {int dummy; } ;
struct rsn_ie_parse_test_data {scalar_t__ result; int len; scalar_t__ data; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 struct rsn_ie_parse_test_data* rsn_parse_tests ;
 scalar_t__ wpa_parse_wpa_ie_rsn (scalar_t__,int ,struct wpa_ie_data*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int rsn_ie_parse_tests(void)
{
 int i, ret = 0;

 wpa_printf(MSG_INFO, "rsn_ie_parse tests");

 for (i = 0; rsn_parse_tests[i].data; i++) {
  const struct rsn_ie_parse_test_data *test;
  struct wpa_ie_data data;

  test = &rsn_parse_tests[i];
  if (wpa_parse_wpa_ie_rsn(test->data, test->len, &data) !=
      test->result) {
   wpa_printf(MSG_ERROR, "rsn_ie_parse test %d failed", i);
   ret = -1;
  }
 }

 return ret;
}

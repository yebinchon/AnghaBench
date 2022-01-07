
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct ext_password_data {int dummy; } ;


 int MSG_INFO ;
 int ext_password_deinit (struct ext_password_data*) ;
 int ext_password_free (struct wpabuf*) ;
 struct wpabuf* ext_password_get (struct ext_password_data*,char*) ;
 struct ext_password_data* ext_password_init (char*,char*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ext_password_tests(void)
{
 struct ext_password_data *data;
 int ret = 0;
 struct wpabuf *pw;

 wpa_printf(MSG_INFO, "ext_password tests");

 data = ext_password_init("unknown", "foo");
 if (data != ((void*)0))
  return -1;

 data = ext_password_init("test", ((void*)0));
 if (data == ((void*)0))
  return -1;
 pw = ext_password_get(data, "foo");
 if (pw != ((void*)0))
  ret = -1;
 ext_password_free(pw);

 ext_password_deinit(data);

 pw = ext_password_get(((void*)0), "foo");
 if (pw != ((void*)0))
  ret = -1;
 ext_password_free(pw);

 return ret;
}

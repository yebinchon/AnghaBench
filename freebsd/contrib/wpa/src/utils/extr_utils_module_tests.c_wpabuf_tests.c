
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int MSG_ERROR ;
 int MSG_INFO ;
 int os_free (void*) ;
 void* os_malloc (int) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc (int) ;
 struct wpabuf* wpabuf_alloc_ext_data (void*,int) ;
 struct wpabuf* wpabuf_concat (struct wpabuf*,int *) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_put (struct wpabuf*,int) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int) ;
 struct wpabuf* wpabuf_zeropad (struct wpabuf*,int) ;

__attribute__((used)) static int wpabuf_tests(void)
{
 int errors = 0;
 void *ptr;
 struct wpabuf *buf;

 wpa_printf(MSG_INFO, "wpabuf tests");

 ptr = os_malloc(100);
 if (ptr) {
  buf = wpabuf_alloc_ext_data(ptr, 100);
  if (buf) {
   if (wpabuf_resize(&buf, 100) < 0)
    errors++;
   else
    wpabuf_put(buf, 100);
   wpabuf_free(buf);
  } else {
   errors++;
   os_free(ptr);
  }
 } else {
  errors++;
 }

 buf = wpabuf_alloc(100);
 if (buf) {
  struct wpabuf *buf2;

  wpabuf_put(buf, 100);
  if (wpabuf_resize(&buf, 100) < 0)
   errors++;
  else
   wpabuf_put(buf, 100);
  buf2 = wpabuf_concat(buf, ((void*)0));
  if (buf2 != buf)
   errors++;
  wpabuf_free(buf2);
 } else {
  errors++;
 }

 buf = ((void*)0);
 buf = wpabuf_zeropad(buf, 10);
 if (buf != ((void*)0))
  errors++;

 if (errors) {
  wpa_printf(MSG_ERROR, "%d wpabuf test(s) failed", errors);
  return -1;
 }

 return 0;
}

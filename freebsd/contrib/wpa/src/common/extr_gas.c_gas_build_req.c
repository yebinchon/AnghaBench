
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WLAN_ACTION_PUBLIC ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf *
gas_build_req(u8 action, u8 dialog_token, size_t size)
{
 struct wpabuf *buf;

 buf = wpabuf_alloc(100 + size);
 if (buf == ((void*)0))
  return ((void*)0);

 wpabuf_put_u8(buf, WLAN_ACTION_PUBLIC);
 wpabuf_put_u8(buf, action);
 wpabuf_put_u8(buf, dialog_token);

 return buf;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int WLAN_ACTION_PROTECTED_DUAL ;
 int * wpabuf_mhead_u8 (struct wpabuf*) ;

__attribute__((used)) static void convert_to_protected_dual(struct wpabuf *msg)
{
 u8 *categ = wpabuf_mhead_u8(msg);
 *categ = WLAN_ACTION_PROTECTED_DUAL;
}

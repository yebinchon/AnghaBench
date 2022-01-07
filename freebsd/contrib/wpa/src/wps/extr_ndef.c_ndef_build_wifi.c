
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int FLAG_MESSAGE_BEGIN ;
 int FLAG_MESSAGE_END ;
 int FLAG_TNF_RFC2046 ;
 struct wpabuf* ndef_build_record (int,int ,int ,int *,int ,struct wpabuf const*) ;
 int os_strlen (int ) ;
 int wifi_handover_type ;

struct wpabuf * ndef_build_wifi(const struct wpabuf *buf)
{
 return ndef_build_record(FLAG_MESSAGE_BEGIN | FLAG_MESSAGE_END |
     FLAG_TNF_RFC2046, wifi_handover_type,
     os_strlen(wifi_handover_type), ((void*)0), 0, buf);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct wpabuf {int dummy; } ;
struct nai_realm {int dummy; } ;


 int MSG_DEBUG ;
 size_t WPA_GET_LE16 (int const*) ;
 int nai_realm_free (struct nai_realm*,size_t) ;
 int * nai_realm_parse_realm (struct nai_realm*,int const*,int const*) ;
 struct nai_realm* os_calloc (size_t,int) ;
 int wpa_printf (int ,char*,size_t,...) ;
 int * wpabuf_head_u8 (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static struct nai_realm * nai_realm_parse(struct wpabuf *anqp, u16 *count)
{
 struct nai_realm *realm;
 const u8 *pos, *end;
 u16 i, num;
 size_t left;

 if (anqp == ((void*)0))
  return ((void*)0);
 left = wpabuf_len(anqp);
 if (left < 2)
  return ((void*)0);

 pos = wpabuf_head_u8(anqp);
 end = pos + left;
 num = WPA_GET_LE16(pos);
 wpa_printf(MSG_DEBUG, "NAI Realm Count: %u", num);
 pos += 2;
 left -= 2;

 if (num > left / 5) {
  wpa_printf(MSG_DEBUG, "Invalid NAI Realm Count %u - not "
      "enough data (%u octets) for that many realms",
      num, (unsigned int) left);
  return ((void*)0);
 }

 realm = os_calloc(num, sizeof(struct nai_realm));
 if (realm == ((void*)0))
  return ((void*)0);

 for (i = 0; i < num; i++) {
  pos = nai_realm_parse_realm(&realm[i], pos, end);
  if (pos == ((void*)0)) {
   nai_realm_free(realm, num);
   return ((void*)0);
  }
 }

 *count = num;
 return realm;
}

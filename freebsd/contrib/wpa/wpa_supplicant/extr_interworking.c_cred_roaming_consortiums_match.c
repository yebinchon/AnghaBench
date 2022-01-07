
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_cred {unsigned int num_roaming_consortiums; int * roaming_consortiums_len; int * roaming_consortiums; } ;


 scalar_t__ roaming_consortium_match (int const*,struct wpabuf const*,int ,int ) ;

__attribute__((used)) static int cred_roaming_consortiums_match(const u8 *ie,
       const struct wpabuf *anqp,
       const struct wpa_cred *cred)
{
 unsigned int i;

 for (i = 0; i < cred->num_roaming_consortiums; i++) {
  if (roaming_consortium_match(ie, anqp,
          cred->roaming_consortiums[i],
          cred->roaming_consortiums_len[i]))
   return 1;
 }

 return 0;
}
